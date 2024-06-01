GILOT_IMAGE_NAME = gilot
GILOT_CSV = repo.csv
GILOT_CSV_FULL = repo_full.csv
GILOT_PLOT = plot.png
GILOT_HOTSPOT = hotgraph.png


build:
	docker build -t $(GILOT_IMAGE_NAME) .
plot:
	docker run --rm -v $(REPO_PATH):/app $(GILOT_IMAGE_NAME) log . > ${PWD}/$(GILOT_CSV)
	docker run --rm -v ${PWD}:/app $(GILOT_IMAGE_NAME) plot -i $(GILOT_CSV) -o $(GILOT_PLOT)
	open ${PWD}/$(GILOT_PLOT)
hotgraph:
	docker run --rm -v $(REPO_PATH):/app $(GILOT_IMAGE_NAME) log --full . > ${PWD}/$(GILOT_CSV_FULL)
	docker run --rm -v ${PWD}:/app $(GILOT_IMAGE_NAME) hotgraph -i $(GILOT_CSV_FULL) -o $(GILOT_HOTSPOT)
	open ${PWD}/$(GILOT_HOTSPOT)