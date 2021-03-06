package main.controller;

import main.entity.*;
import main.entity.enums.UserRole;
import main.service.AuthorityService;
import main.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

@Controller
public class EntryController {

    @Autowired
    UserService userService;

    @Autowired
    AuthorityService authorityService;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @RequestMapping("/login")
    public String onSign(){
        return "main";
    }

    @RequestMapping("/register")
    public String registratiion( @RequestParam(name = "userName") String name,
                                 @RequestParam(name = "userLogin") String login,
                                 @RequestParam(name = "userPassword") String password,
                                 @RequestParam(name = "userPhone") String phone,
                                 @RequestParam(name = "birthDate") String birthDate){
      User user = new User();
      user.setName(name);
      user.setUserName(login);
      user.setPass(passwordEncoder.encode(password));
      //user.setPass("{bcrypt}"+password);
      user.setPhone(phone);
      DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
      LocalDate localDate = LocalDate.parse(birthDate, formatter);
      user.setBirth_date(localDate);
      user.setRegistration_date(LocalDate.now());
      Authority authorities = new Authority();
      authorities.setUsername(login);
      authorities.setAuthority("ROLE_USER");
      user.setAuthority(authorities);
      userService.addUser(user);
      return "WEB-INF/login.jsp";
    }

    @GetMapping("/showLoginPage")
    public String loginPage() {
        return "WEB-INF/login.jsp";
    }

    @GetMapping("/access-denied")
    public String showAccessDenied() {
        return "WEB-INF/access-denied.jsp";
    }
}
