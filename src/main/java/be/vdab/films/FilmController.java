package be.vdab.films;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
public class FilmController {
    @Autowired
    FilmRepository filmRepository;

    @RequestMapping("/hello")
    public String hello(){
        return "home";
    }

    @RequestMapping("/films")
    public String films(Map<String, Object> model){
        model.put("films",filmRepository.findAll());
        return "film/list";
    }
}
