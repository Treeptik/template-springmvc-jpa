package fr.treeptik.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fr.treeptik.dao.ToDoDao;
import fr.treeptik.exception.ServiceException;
import fr.treeptik.model.ToDo;
import fr.treeptik.service.ToDoService;

@Service
public class ToDoServiceImpl implements ToDoService {

	@Autowired
	private ToDoDao toDoDao;

	@Override
	@Transactional
	public void add(ToDo toDo) throws ServiceException {

		toDoDao.save(toDo);
	}

	@Override
	public List<ToDo> getAll() throws ServiceException {

		List<ToDo> toDos = new ArrayList<>();
		try {
			toDos = toDoDao.findAll();
			
		} catch (Exception e) {
			throw new ServiceException(e.getMessage(), e);
		}
		
		return toDos;
	}

	@Override
	public ToDo get(Integer id) throws ServiceException {

		return toDoDao.findOne(id);
	}

	@Override
	@Transactional
	public void delete(Integer id) throws ServiceException {

		toDoDao.delete(id);
	}

}
