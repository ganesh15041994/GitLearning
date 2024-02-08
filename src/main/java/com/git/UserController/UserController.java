package com.git.UserController;

import java.security.Principal;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Optional;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.git.AdminModel.Course;
import com.git.AdminService.CourseService;
import com.git.helper.Msg;
import com.git.security.model.User;
import com.git.security.repo.UserDao;
import com.git.userModel.UserCourseSubscription;
import com.git.userModel.UserProfile;
import com.git.userService.CartService;
import com.git.userService.UserCourseSubscriptionService;
import com.git.userService.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	UserService userService;

	@Autowired
	CourseService courseService;

	@Autowired
	UserDao userDao;
	
	@Autowired
	CartService cartService;

	@Autowired
	UserCourseSubscriptionService courseSubscriptionService;

	/*
	 * @GetMapping("/userLogin") public String userLoginPage(HttpServletRequest
	 * request) { request.getSession().invalidate(); return "cmnLogin"; }
	 */

	@GetMapping("/userRegistration")
	public String userRegistrationPage() {
		return "UserRegistration";
	}

	@ModelAttribute
	public void commanUser(Principal p, Model model) {

		if (p != null) {
			String email = p.getName();
			User user = userDao.findByEmail(email);
			model.addAttribute("user", user);
		}

	}

	/*
	 * @PostMapping("/saveRegistration") public ModelAndView
	 * saveUserInfo(UserProfile profile, @RequestParam("cpassword") String
	 * cpassword, HttpServletRequest request) { ModelAndView view = new
	 * ModelAndView(); view.setViewName("UserLogin"); profile.setRole("user");
	 * boolean b = profile.getPassword().equals(cpassword);
	 * 
	 * if (b && userService.isSaveUser(profile)) { if
	 * (request.getSession().getAttribute("course") != null) { Msg msg = new
	 * Msg("Registration Done Successfully....!", "text-success");
	 * view.addObject("msg", msg); view.setViewName("UserLogin"); return view; }
	 * else { HttpSession session = request.getSession(); Course course = (Course)
	 * session.getAttribute("course"); view.addObject("c", course);
	 * view.setViewName("BuyCourse"); return view; } } else {
	 * 
	 * Msg msg = new Msg("Please Fill Proper Detail ", "text-danger");
	 * view.addObject("msg", msg); view.setViewName("UserLogin"); return view; } }
	 * 
	 * @PostMapping("/validateUserLogin") public String
	 * validateLogin(@RequestParam("username") String
	 * email, @RequestParam("password") String password, Model model,
	 * HttpServletRequest request) {
	 * 
	 * System.out.println(email + "\t" + password);
	 * 
	 * UserProfile profile = userService.getUser(email, password); if (profile !=
	 * null) {
	 * 
	 * if (request.getSession().getAttribute("course") != null) {
	 * System.out.println("Login Successs"); HttpSession session =
	 * request.getSession(); session.setAttribute("user", profile); Course course =
	 * (Course) session.getAttribute("course");
	 * 
	 * model.addAttribute("c", course); return "BuyCourse"; } else {
	 * 
	 * HttpSession session = request.getSession(); session.setAttribute("user",
	 * profile);
	 * 
	 * return "userDashboard"; }
	 * 
	 * }
	 * 
	 * else { Msg msg = new Msg("Wrong User Name Or Password...!", "text-danger");
	 * model.addAttribute("msg", msg); return "UserLogin"; } }
	 */
	@GetMapping("/buyCourse/{id}")
	public String buyCourseLogin(@PathVariable("id") Integer id, Model model, HttpServletRequest request) {
		Course course = courseService.getSpecificCourse(id);
		model.addAttribute("c", course);
		// System.out.println(course);

		return "BuyCourse";

	}

	@PostMapping("/saveBuyedCourse")
	public String saveBuyedCourse(@RequestParam("courseId") String courseId, @RequestParam("userId") String userId,
			Model model) {

		System.out.println(courseId + "\t" + userId);
		Course c = courseService.getSpecificCourse(Integer.valueOf(courseId));
		User u = userDao.getById(Integer.valueOf(userId));
		UserCourseSubscription subscription = new UserCourseSubscription();
		subscription.setCourse(c);
		subscription.setUser(u);
		subscription.setEnable(true);
		UserCourseSubscription uc = courseSubscriptionService.saveUserCourse(subscription);
		model.addAttribute("us", uc);
		System.out.println(uc);
		return "userDashboard";

	}

	@GetMapping("/myLearning")
	public String myLearning() {
		return "MyLearning";
	}

	@GetMapping("/myAllCourses/{id}")
	public String userAllCourse(@PathVariable("id") Integer id,Model model) {

		List<UserCourseSubscription> list = courseSubscriptionService.findCourses(id);

		Set<UserCourseSubscription> uset = new LinkedHashSet<>(list);
		// System.out.println(list);

		for (UserCourseSubscription u : uset) {

			System.out.println(u.getCourse().getPath());
			System.out.println(u.getUser().getName());

		}
		model.addAttribute("c", uset);
		return "userAllCourses";
	}
	
	@GetMapping("/addCart/{cid}/{uid}")
	public String addToCart(@PathVariable Integer cid, @PathVariable Integer uid)
	{
		User user = userDao.getById(uid);
		Course course = courseService.getSpecificCourse(cid);
		
		String result =  cartService.addToCart(user, course);
		return result;
	}
}
