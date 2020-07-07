package ent.trainer.assign.services;

import ent.trainer.assign.model.Trainer;
import ent.trainer.assign.repos.TrainerRepository;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author pkontekas
 */
@Service
public class TrainerServiceImpl implements TrainerServiceInterface {
    
    @Autowired
    TrainerRepository trainerRepository;
    
    @Override
    @Transactional
    public void insertTrainer(Trainer t) {
        trainerRepository.save(t);
    }
    
    @Override
    public List<Trainer> showTrainers(){
        return trainerRepository.findAll();
    }

    @Override
    @Transactional
    public void deleteTrainerById(int id) {
        trainerRepository.deleteById(id);
    }

    @Override
    public Trainer findTrainer(int id) {
        return trainerRepository.findById(id);
    }

    @Override
    @Transactional
    public void updateTrainer(Trainer t) {
        trainerRepository.save(t);
    }

}
