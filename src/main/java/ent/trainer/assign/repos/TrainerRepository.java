package ent.trainer.assign.repos;

import ent.trainer.assign.model.Trainer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * @author pkontekas
 */
@Repository
public interface TrainerRepository extends JpaRepository<Trainer, Integer> {
    
    public Trainer findById(int id);

}
