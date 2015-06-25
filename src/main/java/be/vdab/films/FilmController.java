package be.vdab.films;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class FilmController {

    @RequestMapping("/hello")
    @ResponseBody
    public String hello(){
        return "Hello World";
    }
}
