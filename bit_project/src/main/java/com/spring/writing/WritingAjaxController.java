package com.spring.writing;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.MultipartRequest;


@RestController
public class WritingAjaxController {
	@Autowired(required = false) 
	private WritingService writingService;
	
	
	@PostMapping(value = "/imgsrc.cw", produces="application/json;charset=UTF-8")
   public ResponseEntity<?> handleFileUpload(@RequestParam("file") MultipartFile file) throws Exception {
		 try {
			 MultipartFile mf = file;
			 String originalFileExtension = mf.getOriginalFilename().substring(mf.getOriginalFilename().lastIndexOf("."));
		        String storedFileName = UUID.randomUUID().toString().replaceAll("-", "") + originalFileExtension;
		        
		        	System.out.println(storedFileName);
//	            UploadFile uploadedFile = imageService.store(file);
	            return ResponseEntity.ok().body("/image/");
	            //uploadPath + storedFileName
	        } catch (Exception e) {
	            e.printStackTrace();
	            return ResponseEntity.badRequest().build();
	        }

   
   }
	
//	
//	@PostMapping("/image.cw")
//	public ResponseEntity<?> handleFileUpload(@RequestParam("file") MultipartFile file) {
//        WritingVO writingvo = null;
//        String imgpath = null;
//        
//		try {
//        	imgpath =  writingService.returnTest((WritingVO)file);
//        	System.out.println(imgpath);
//        	return ResponseEntity.ok().body("/image/" + imgpath);
//        } catch (Exception e) {
//            e.printStackTrace();
//            return ResponseEntity.badRequest().build();
//        }
//    }

//	@PostMapping(value="/imgUpload.cw", produces = "application/json;charset=UTF-8")
//	public Map<String, Object> imgUpload(WritingVO writingvo, MultipartHttpServletRequest request) {
//		Map<String, Object> retVal = new HashMap<String, Object>();
//		
//		// 이미지 업로드할 경로
//		String uploadPath = "D:/WYSIWYG_EDITOR_FILEUPLOAD/upload";
//	    int size = 10 * 1024 * 1024;  // 업로드 사이즈 제한 10M 이하
//		
//		String fileName = " "; // 파일명
//		
//		try{
//	        // 파일업로드 및 업로드 후 파일명 가져옴
//			MultipartRequest multi = new MultipartRequest(request, uploadPath, size, "utf-8", new DefaultFileRenamePolicy());
//			Enumeration files = (Enumeration) multi.getFileNames();
//			String file = (String)files.nextElement(); 
//			fileName = multi.getFilesystemName(file); 
//			
//		}catch(Exception e){
//			e.printStackTrace();
//		}
//		
//	    // 업로드된 경로와 파일명을 통해 이미지의 경로를 생성
//		String uploadPath = "/upload/" + fileName;
//		
//	    // 생성된 경로를 JSON 형식으로 보내주기 위한 설정
//		JSONObject jobj = new JSONObject();
//		jobj.put("url", uploadPath);
//		
//		response.setContentType("application/json"); // 데이터 타입을 json으로 설정하기 위한 세팅
//		out.print(jobj.toJSONString());
//
//
//	}
	



}
