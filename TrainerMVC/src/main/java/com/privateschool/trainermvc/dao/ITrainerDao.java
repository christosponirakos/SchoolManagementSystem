/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.privateschool.trainermvc.dao;

import com.privateschool.trainermvc.entities.Trainer;
import java.util.List;

/**
 *
 * @author Chris
 */
public interface ITrainerDao {

    public List<Trainer> findAllTrainers();

    public Trainer findById(int id);

    public boolean save(Trainer Trainer);

    public boolean delete(int id);

    public boolean update(Trainer Trainer);
}
