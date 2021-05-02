package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.Repo.AdminRepo;
import com.example.demo.Repo.DogRepo;
import com.example.demo.model.Admin;
import com.example.demo.model.Dog;


@Controller
public class DogController {

	@Autowired
	DogRepo dogrepo;
	
	
	
	
	@Autowired
	AdminRepo adminRepo;
	
	
	
//	Admin Pannel
	@RequestMapping("adminlogin")
	public ModelAndView login() {
		ModelAndView mv = new ModelAndView("Login.jsp");
		return mv;
	}
	
	@RequestMapping("Admindashboard")
	public ModelAndView adminDashboard(@RequestParam("email") String email,@RequestParam("password") String pass) {
		ModelAndView mv = new ModelAndView();
		 Admin verify=adminRepo.findByEmail(email);
	        if(verify==null) {
	        	mv.setViewName("error.jsp");
	        }else {
	        	if(verify.getEmail().equals(email) && verify.getPassword().equals(pass) ) {
	        		mv.addObject("welcome", "welcome");
	        		mv.addObject("obj", verify);
	        		mv.setViewName("AdminDashboard.jsp");
	        		
	        	}else
	        	{
	        		mv.setViewName("error.jsp");
	        	}
	        
	        }
		return mv;
	}
	
	@RequestMapping("adminDD")
	public ModelAndView adminVerify(Admin admin) {
		ModelAndView mv = new ModelAndView("AdminDetails.jsp");
		mv.addObject("admin",adminRepo.findAll());
		return mv;
	}
	
	
	@RequestMapping("updateForm")
	public ModelAndView upadteForm(Admin admin) {
		ModelAndView mv =new ModelAndView("UpdateAdmin.jsp");
		adminRepo.findById(admin.getId());
		mv.addObject("admin",admin);
		return mv;
	}
	
	@RequestMapping("UpdateAdminData")
	public ModelAndView afterUpdate(Admin admin) {
		adminRepo.save(admin);
		ModelAndView mv = new ModelAndView("AdminDetails.jsp");
		mv.addObject("admin",adminRepo.findAll());
		return mv;
	}
	
	@RequestMapping("addAdminData")
	public ModelAndView AddadminData(Admin admin) {
		ModelAndView mv = new ModelAndView("AddAdminData.jsp");
		return mv;
	}
	
	
	@RequestMapping("deleteForm")
	public ModelAndView deleteForm(Admin admin) {
		ModelAndView mv =new ModelAndView("AdminDetails.jsp");
		adminRepo.findById(admin.getId());
		adminRepo.deleteById(admin.getId());
		mv.addObject("admin",adminRepo.findAll());
		return mv;
	}
// End of Admin Pannel
	
	
	
	
	
	
	
}
