///*TODO this custom class never worked

//package ent.trainer.assign.validators;
//
//import ent.trainer.assign.model.Trainer;
//import org.springframework.stereotype.Component;
//import org.springframework.validation.Errors;
//import org.springframework.validation.ValidationUtils;
//import org.springframework.validation.Validator;
//
///**
// *
// * @author pkontekas
// */
//@Component
//public class TrainerValidator implements Validator{
//
//    @Override
//    public boolean supports(Class<?> clazz) {
//        return Trainer.class.equals(clazz);
//    }
//
//    @Override
//    public void validate(Object target, Errors errors) {
//        Trainer t = (Trainer) target;
//        ValidationUtils.rejectIfEmpty(errors, t.getFirstname(), "firstname.empty", "validator message");
//        ValidationUtils.rejectIfEmpty(errors, t.getLastname(), "lastname.empty", "validator message");
//        ValidationUtils.rejectIfEmpty(errors, t.getSubject(), "subject.empty", "validator message");
//        if (t.getFirstname().length()<2 || t.getFirstname().length()>45){
//            errors.rejectValue("firstname", "firstname.wrong", "validator message");
//        }
//        if (t.getLastname().length()<2 || t.getLastname().length()>45){
//            errors.rejectValue("lastname", "lastname.wrong", "validator message");
//        }
//        if (t.getSubject().length()<2 || t.getSubject().length()>60){
//            errors.rejectValue("subject", "subject.wrong", "validator message");
//        }
//    }
//}
