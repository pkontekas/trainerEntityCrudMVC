package ent.trainer.assign.services;

import ent.trainer.assign.model.Trainer;
import java.util.List;


/**
 * @author pkontekas
 */

public interface TrainerServiceInterface {
    
    public void insertTrainer(Trainer t);
    public void updateTrainer(Trainer t);
    public List<Trainer> showTrainers();
    public void deleteTrainerById(int id);
    public Trainer findTrainer(int id);
}
