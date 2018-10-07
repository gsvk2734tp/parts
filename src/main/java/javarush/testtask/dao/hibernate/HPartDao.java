package javarush.testtask.dao.hibernate;

import javarush.testtask.dao.PartDao;
import javarush.testtask.model.Part;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class HPartDao implements PartDao {
    private SessionFactory sessionFactory;


    @Override
    public List<Part> findAllParts() {
        return sessionFactory.getCurrentSession().createQuery("SELECT e FROM Part e").list();
    }

    @Override
    public void addPart(Part part) {
        sessionFactory.getCurrentSession().save(part);
    }

    @Override
    public void updatePart(Part part) {
        sessionFactory.getCurrentSession().update(part);
    }

    @Override
    public void removePart(Long id) {
        Session session = this.sessionFactory.getCurrentSession();
        Part part = sessionFactory.getCurrentSession().load(Part.class, id);

        if (part != null) {
            session.delete(part);
        }
    }

    @Override
    public Part getPartById(Long id) {
        return sessionFactory.getCurrentSession().get(Part.class, id);
    }

    @Override
    public List<Part> findByRequiredPart(Boolean required) {
        Session session = sessionFactory.getCurrentSession();
        Query q = session.createQuery("SELECT e FROM Part e WHERE e.required = :required");
        q.setParameter("required", required);
        List<Part> result = q.list();
        return result;
    }

    @Override
    public List<Part> findByName(String name) {
        Session session = sessionFactory.getCurrentSession();
        Query q = session.createQuery("SELECT e FROM Part e WHERE e.name LIKE :name");
        q.setParameter("name", "%" + name + "%");
        List<Part> result = q.list();
        return result;
    }

    @Override
    public List<Part> getPageUsers(int offset, int pageCount) {
        List<Part> parts = sessionFactory.getCurrentSession().createQuery("SELECT e FROM Part e").list();
        List<Part> pageParts = new ArrayList<>();
        if (parts.size() <= offset) {
            return parts;
        } else if (parts.size() < (offset + pageCount)) {
            for (int i = offset; i < parts.size(); i++) {
                pageParts.add(parts.get(i));
            }
        } else {
            for (int i = offset; i < offset + pageCount; i++) {
                pageParts.add(parts.get(i));
            }
        }
        return pageParts;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
}
