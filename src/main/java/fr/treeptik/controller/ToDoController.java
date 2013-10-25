package fr.treeptik.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import fr.treeptik.exception.ServiceException;
import fr.treeptik.model.ToDo;
import fr.treeptik.service.ToDoService;

@Controller
public class ToDoController {

	@Autowired
	private ToDoService toDoService;

	@RequestMapping(value = "/index.do", method = RequestMethod.GET)
	public ModelAndView initForm() {

		ToDo toDo = new ToDo();
		ModelAndView modelAndView = new ModelAndView("index", "toDo", toDo);

		return modelAndView;

	}

	@RequestMapping(value = "/list.do", method = RequestMethod.GET)
	public ModelAndView list() throws ServiceException {

		return new ModelAndView("list", "toDos", toDoService.getAll());

	}

	@RequestMapping(value = "/index.do", method = RequestMethod.POST)
	public ModelAndView addToDo(@Validated ToDo toDo, BindingResult errors)
			throws ServiceException {

		toDoService.add(toDo);

		return new ModelAndView("list", "toDos", toDoService.getAll());

	}

	@RequestMapping(value = "/delete.do", method = RequestMethod.GET)
	public String delete(@ModelAttribute ToDo toDo) throws ServiceException {

		toDoService.delete(toDo.getId());

		return "redirect:list.do";
	}

}
