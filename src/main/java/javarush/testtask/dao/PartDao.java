package javarush.testtask.dao;

import javarush.testtask.model.Part;

import java.util.List;

public interface PartDao {

    List findAllParts();

    void addPart(Part part);

    void updatePart(Part part);

    void removePart(Long id);

    Part getPartById(Long id);

    List<Part> findByRequiredPart(Boolean required);

   List<Part> findByName(String name);

    List<Part> getPageUsers(int offset, int pageCount);
}
