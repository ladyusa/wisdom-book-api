package th.ac.ku.book.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import th.ac.ku.book.model.Book;
import th.ac.ku.book.service.BookService;

import java.util.List;

@RestController
@RequestMapping("/books")
public class BookRestController {

    @Autowired
    private BookService service;

    @GetMapping
    public List<Book> getBooks() {
        return service.getAll();
    }

    @PostMapping
    public Book addBook(@RequestBody Book book) {
        return service.create(book);
    }

}
