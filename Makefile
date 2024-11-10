.PHONY: clean All

All:
	@echo "----------Building project:[ opengl1 - Debug ]----------"
	@cd "opengl1" && "$(MAKE)" -f  "opengl1.mk"
clean:
	@echo "----------Cleaning project:[ opengl1 - Debug ]----------"
	@cd "opengl1" && "$(MAKE)" -f  "opengl1.mk" clean
