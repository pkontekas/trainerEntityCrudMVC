package ent.trainer.assign.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 * @author pkontekas
 */
@Controller
public class WelcomeController {    
    @RequestMapping("/welcome")
    public String welcome(){
        return "index";
    }
}