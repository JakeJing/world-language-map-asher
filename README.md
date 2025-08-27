# World Languages Map Visualization

An interactive visualization of world language distributions based on the Asher & Moseley 2007 Atlas of the World's Languages. This project provides multiple ways to explore language data through interactive maps and visualizations.

## Features

### 🌍 Interactive Language Maps
- **Polygon-based visualization**: Each language is represented by a geographic polygon showing where it's traditionally spoken
- **Language metadata**: Includes language names and Glottocodes for precise identification
- **Family-based filtering**: Explore languages by their family relationships with dropdown menu selection
- **Hover tooltips**: Hover over any language area for detailed information (no click required)
- **Dual color system**: Main map uses original colors, family maps use Glottolog parent_id coloring for linguistic subgrouping
- **Comprehensive Traditional vs Contemporary comparison**: Side-by-side main maps, family distributions, and language databases showing historical and current language data

### 📊 Data Exploration Tools
- **Interactive maps**: Multiple map views for different language families
- **Statistical visualizations**: Charts showing language family distributions
- **Searchable database**: Complete language database with filtering capabilities
- **Export functionality**: Download filtered data for further analysis

## Files Overview

### Main Application

**`language-map.qmd`** - Complete Quarto document with top 10 language families
- **Static deployment**: Works perfectly on GitHub Pages and other static hosting
- **Top 10 families**: Shows only the largest language families (excluding unclassified)
- **Original colors**: Uses authentic color scheme from the data source
- **Hover tooltips**: Detailed language information on hover
- **Individual family maps**: Separate maps for each of the top 10 families
- **No server required**: Pure static HTML/CSS/JS for easy deployment

### Supporting Files

- **`styles.css`** - Custom styling for the applications
- **`about.md`** - Information about the data and application
- **`README.md`** - This file with deployment instructions

## Deployment Options

### Option 1: GitHub Pages (Recommended for Static Version)

This is the easiest way to deploy the static version:

1. **Push to GitHub**:
   ```bash
   git add .
   git commit -m "Add language map visualization"
   git push origin main
   ```

2. **Enable GitHub Pages**:
   - Go to your repository settings
   - Scroll down to "GitHub Pages" section
   - Select "Deploy from a branch"
   - Choose "main" branch and "/docs" folder
   - Click "Save"

3. **Build and Deploy**:
   ```bash
   # Install Quarto if not already installed
   # https://quarto.org/docs/get-started/
   
   # Build the language map
   quarto render language-map.qmd
   
   # Move the output to docs folder
   mkdir -p docs
   cp language-map.html docs/index.html
   cp -r language-map_files docs/
   cp styles.css docs/
   cp about.md docs/
   
   # Push to GitHub
   git add docs/
   git commit -m "Add built files for GitHub Pages"
   git push origin main
   ```

4. **Access your site**: `https://yourusername.github.io/your-repo-name/`

### Option 2: Automated Deployment (GitHub Actions)

The repository includes GitHub Actions for automatic deployment:

1. **Push to main branch**: Any push to the main branch will automatically trigger deployment
2. **Automatic build**: GitHub Actions will build the Quarto document and deploy to GitHub Pages
3. **No manual steps**: The deployment script handles everything automatically

The GitHub Actions workflow will:
- Install R and required packages
- Build the Quarto document
- Deploy to GitHub Pages automatically

### Option 3: Local Development

To run locally:

1. **Install R and required packages**:
   ```r
   install.packages(c("sf", "leaflet", "dplyr", "DT", "plotly", "viridis", "RColorBrewer"))
   ```

2. **Install Quarto**: https://quarto.org/docs/get-started/

3. **Render the document**:
   ```bash
   quarto render language-map.qmd
   ```

4. **Open the HTML file** in your browser

## Data Source

The visualization is based on the **Asher & Moseley 2007 Atlas of the World's Languages** and **Glottolog database**, which provide:

- **Language polygons**: Geographic boundaries for each language
- **Language metadata**: Names, Glottocodes, and family classifications
- **Family groupings**: Hierarchical organization of languages
- **Parent group information**: Glottolog parent_id for linguistic subgrouping

### Data Structure

- **`languages.geojson`**: Contains individual language polygons with properties
- **`families.geojson`**: Contains family-level polygons
- **`languages.csv`**: Contains metadata about languages including coordinates and family names
- **`glottolog_languoid/languoid.csv`**: Contains Glottolog classification data including parent_id information
- **Traditional data**: Historical language distributions from the traditional folder

## Key Features Explained

### Language Areas as Polygons
Each language is represented by a polygon that covers the specific geographic area where that language is traditionally spoken. These polygons are based on linguistic fieldwork and demographic research.

### Interactive Family Selection
- **Dropdown Menu**: Choose from all available language families
- **Dynamic Filtering**: Map updates automatically based on your selection
- **Dual Color System**: Main map uses original colors, family maps use Glottolog parent_id coloring
- **Comprehensive Traditional vs Contemporary Data**: Side-by-side main maps, family distributions, and language databases for complete historical comparison

### Hover Information
- **Tooltips**: Hover over any language area to see detailed information
- **No Click Required**: Information appears instantly on hover
- **Rich Content**: Shows language name, family, parent group, and Glottocode

### Language Names and Glottocodes
Every language includes:
- **Language Name**: The common name of the language
- **Glottocode**: A unique identifier from the Glottolog database for precise language identification

### Family-Based Organization
Languages are organized into families, allowing exploration of:
- Specific language families (e.g., Indo-European, Sino-Tibetan, Niger-Congo, Austronesian)
- Geographic distributions across different families
- Linguistic relationships and patterns

### Traditional vs Contemporary Comparison
- **Side-by-Side Main Maps**: Compare traditional and contemporary world language distributions
- **Side-by-Side Family Distributions**: Compare family size changes over time
- **Side-by-Side Language Databases**: Complete datasets for both time periods
- **Historical Perspective**: See how language distributions have changed over time
- **Data Integrity**: Both datasets use the same classification system for consistency

## Technical Requirements

- R with packages: `sf`, `leaflet`, `dplyr`, `DT`, `plotly`, `viridis`, `RColorBrewer`
- Quarto (for building the document)
- No server required - pure static deployment

## Usage Tips

1. **Start with the main map** to get an overview of global language distribution
2. **Use family-specific maps** to explore particular language groups
3. **Click on polygons** to see detailed language information
4. **Explore the statistics** to understand language family distributions
5. **Use the searchable table** to find specific languages

## Citation

When using this visualization, please cite:
```
Asher, R.E. & Moseley, C. (2007). Atlas of the World's Languages. Routledge.
```

## Contributing

Feel free to contribute improvements, bug fixes, or additional features. Please ensure that any changes maintain the academic integrity of the data and provide appropriate citations.

## License

This project is open source. The data is sourced from the Asher & Moseley 2007 Atlas, and the visualization code is provided under standard open source terms.

---

*Built with R, Quarto, and Leaflet for interactive language mapping and exploration.*
