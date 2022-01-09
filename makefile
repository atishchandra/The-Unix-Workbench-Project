NAME  = README.md
TITLE = "Guessing Game"
LINES = $(shell (wc -l guessinggame.sh | awk '{print $$1}'))

all: $(NAME)

$(NAME):
	touch $(NAME)
	@echo $(TITLE) >> $(NAME)
	@echo $(LINES) >> $(NAME)
	date >> $(NAME)

clean:
	$(RM) $(NAME)

re:	clean all
