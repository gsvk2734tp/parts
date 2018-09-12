package javarush.testtask.service;

import javarush.testtask.model.Part;

import java.util.List;

public interface PartServiceInterface {
    List findAllParts();

    void addPart(Part part);

    void updatePart(Part part);

    void removePart(Long id);

    Part getPartById(Long id);

    List<Part> findByName(String name);

    List<Part> findByRequiredPart(Boolean required);

}
