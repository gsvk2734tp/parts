package javarush.testtask.service;

import javarush.testtask.dao.PartDao;
import javarush.testtask.model.Part;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@Service
@Transactional
public class PartService implements PartServiceInterface {
    private PartDao partDao;

    @Override
    public List<Part> findAllParts() {
        return partDao.findAllParts();
    }

    @Override
    public void addPart(Part part) {
        partDao.addPart(part);
    }

    @Override
    public void updatePart(Part part) {
        partDao.updatePart(part);
    }

    @Override
    public void removePart(Long id) {
        partDao.removePart(id);
    }

    @Override
    public Part getPartById(Long id) {
        return (Part) partDao.getPartById(id);
    }

    public List<Part> getPageUsers(int n1, int n2) {
        return partDao.getPageUsers(n1, n2);
    }


    @Override
    public List<Part> findByName(String name) {
        return partDao.findByName(name);
    }

    @Override
    public List<Part> findByRequiredPart(Boolean required) {
        if (required == null) return partDao.findAllParts();
        return partDao.findByRequiredPart(required);
    }

    public int minCopmputer(List<Part> parts) {
        ArrayList<Integer> minParts = new ArrayList<>();
        Integer min;
        if (parts.size() == 0) return 0;
        else {
            for (Part part : parts) {
                if (part.getRequired()) minParts.add(part.getAmount());
            }
            if (minParts.size() == 0) return 0;
            min = Collections.min(minParts);
        }
        return min;
    }

    public int getCount(int size, int pageCount) {
        int count;
        if (size < pageCount) {
            count = 1;
        } else if (size % pageCount == 0) {
            count = size / pageCount;
        } else {
            count = size / pageCount + 1;
        }
        return count;
    }

    public void setPartDao(PartDao partDao) {
        this.partDao = partDao;
    }


}
