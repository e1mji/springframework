package com.itbank.component;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class FileComponent {
	private SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
	private String saveDirectory = "C:\\upload";
	
	public FileComponent() {
		File dir = new File(saveDirectory);
		if(dir.exists()) {
			dir.mkdirs();
		}
	}
	
	public String upload(MultipartFile upload) {
		String fileName = sdf.format(new Date())+ "_" + upload.getOriginalFilename();
		File dest = new File(saveDirectory,fileName);
		
		try {
			upload.transferTo(dest);
			return fileName;
		} catch (IllegalStateException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

}
