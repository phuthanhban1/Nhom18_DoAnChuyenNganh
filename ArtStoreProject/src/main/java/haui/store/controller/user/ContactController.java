package haui.store.controller.user;

import haui.store.common.Constants;
import haui.store.service.ContactService;
import haui.store.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

@Controller
public class ContactController {
	@Autowired
    ContactService contactService;
	@Autowired
    UserService userService;
	@GetMapping("/contact")
	public String index(Model model, @ModelAttribute("username") String username) {
		if(username == null) {
			model.addAttribute("username", "");
		} else model.addAttribute("username", username);
		return Constants.USER_DISPLAY_CONTACT;
	}
}
