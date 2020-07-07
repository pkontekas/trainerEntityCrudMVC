package ent.trainer.assign.controllers;

import ent.trainer.assign.model.Trainer;
import ent.trainer.assign.services.TrainerServiceInterface;
import java.util.List;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

/**
 * @author pkontekas
 */
@Controller
public class TrainerController {

    @Autowired
    TrainerServiceInterface trainerServiceInterface;

    @Autowired
    MessageSource messageSource;
    
//    @Autowired
//    TrainerValidator trainerValidator;
    
//    @InitBinder
//    private void initBinder(WebDataBinder binder){
//        binder.addValidators(trainerValidator);
//    }
    @GetMapping("/preinserttrainer")
    public String showForm(ModelMap mm) {
        mm.addAttribute("newtrainer", new Trainer());
        return "trainerform";
    }

    @PostMapping("/doinserttrainer")
    public String insertTrainer(@Valid
            @ModelAttribute("newtrainer") Trainer t, BindingResult br, ModelMap mm) {
        if (br.hasErrors())
            return "trainerform";
        try
        {
            trainerServiceInterface.insertTrainer(t);
            mm.addAttribute("trainer", t);
            return "insertresult";
        }
        catch (Exception e)
        {
            e.printStackTrace();
            mm.addAttribute("kindoferror", e.getMessage());
            return "error";
        }
    }

    @GetMapping("/preshowtrainers")
    public String showTrainers(ModelMap mm) {
        try
        {
            List<Trainer> trainers = trainerServiceInterface.showTrainers();
            mm.addAttribute("alltrainers", trainers);
            return "showtrainers";
        }
        catch (Exception e)
        {
            e.printStackTrace();
            mm.addAttribute("kindoferror", e.getMessage());
            return "error";
        }
    }

    @PostMapping("/dodeletetrainer")
    public String deleteTrainer(int id) {
        trainerServiceInterface.deleteTrainerById(id);
        return "deleteresult";
    }

    @PostMapping("/preupdatetrainer")
    public String findTrainer(ModelMap mm, int id) {
        try
        {
            Trainer tr = trainerServiceInterface.findTrainer(id);
            mm.addAttribute("trainertoupdate", tr);
            return "updateform";
        }
        catch (Exception e)
        {
            e.printStackTrace();
            mm.addAttribute("kindoferror", e.getMessage());
            return "error";
        }
    }

    @PostMapping("/doupdatetrainer")
    public String updateTrainer(@Valid
            @ModelAttribute("trainertoupdate") Trainer t, BindingResult br, ModelMap mm) {
        if (br.hasErrors()) 
            return "updateform";
        try
        {
            trainerServiceInterface.updateTrainer(t);
            mm.addAttribute("trainer", t);
            return "insertresult";
        }
        catch (Exception e)
        {
            e.printStackTrace();
            mm.addAttribute("kindoferror", e.getMessage());
            return "error";
        }
    }
}