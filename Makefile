CXX = g++
CXXFLAGS = -O3

.PHONY: all
all: bar_chart

bar_chart: bar_chart.cpp
	$(CXX) $(CXXFLAGS) -fopenmp -o bar_chart bar_chart.cpp -I/usr/include/python3.6m -lpython3.6m

.PHONY: clean
clean:
	rm -f bar_chart
