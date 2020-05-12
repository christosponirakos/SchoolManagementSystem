/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.privateschool.trainermvc.services;

import com.privateschool.trainermvc.dao.TrainerDaoImpl;
import com.privateschool.trainermvc.entities.Trainer;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Chris
 */
@Service("trainerService")
@Transactional
public class TrainerImpl implements ITrainer {

    @Autowired
    TrainerDaoImpl dao;

    public List<Trainer> findAllTrainers() {
        List<Trainer> trainers = dao.findAllTrainers();
        return trainers;
    }

    public Trainer findById(int id) {
        return dao.findById(id);
    }

    public boolean save(Trainer Trainer) {
        return dao.save(Trainer);
    }

    public boolean delete(int id) {
        return dao.delete(id);
    }

    public boolean update(Trainer trainer) {
        trainer.setFirstname(convertTextToUpper(trainer.getFirstname()));
        trainer.setLastname(convertTextToUpper(trainer.getLastname()));
        trainer.setSubject(convertTextToUpper(trainer.getSubject()));
        dao.update(trainer);
        return true;
    }

    protected String convertTextToUpper(String text) {
        return text.toUpperCase();
    }

}
