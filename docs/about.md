# About the World Languages Map

## Data Source

This interactive map is based on the **Asher & Moseley 2007 Atlas of the World's Languages**, a comprehensive linguistic atlas that documents the distribution of languages worldwide. The dataset provides:

- **Language polygons**: Geographic boundaries where each language is spoken
- **Language metadata**: Names, glottocodes, and family classifications
- **Family groupings**: Hierarchical organization of languages into families

## Key Features

### Language Areas as Polygons
Each language is represented by a polygon that covers the specific geographic area where that language is traditionally spoken. These polygons are based on linguistic fieldwork and demographic research.

### Language Names and Glottocodes
Every language point includes:
- **Language Name**: The common name of the language
- **Glottocode**: A unique identifier from the Glottolog database for precise language identification

### Family-Based Filtering
Languages are organized into families, allowing you to:
- Explore specific language families (e.g., Indo-European, Sino-Tibetan, Niger-Congo)
- Compare distributions across different families
- Focus on particular geographic regions or linguistic groups

## Technical Details

### Data Processing
- **Source**: Contemporary language data from the Asher 2007 dataset
- **Format**: GeoJSON with spatial polygons and metadata
- **Coordinate System**: WGS84 (standard for web mapping)

### Interactive Features
- **Real-time filtering**: Select language families to focus your exploration
- **Multiple map backgrounds**: Choose from different base maps
- **Customizable styling**: Adjust colors and opacity
- **Data export**: Download filtered datasets for further analysis

## Usage Tips

1. **Start with "All Families"** to get an overview of global language distribution
2. **Use the family filter** to explore specific language groups
3. **Click on polygons** to see detailed language information
4. **Adjust opacity** to see underlying geographic features
5. **Try different color schemes** for better visualization of family relationships

## Citation

When using this visualization, please cite:
```
Asher, R.E. & Moseley, C. (2007). Atlas of the World's Languages. Routledge.
```

## Technical Implementation

This application is built using:
- **R/Shiny**: Interactive web application framework
- **Leaflet**: Interactive mapping library
- **SF**: Spatial data handling in R
- **Quarto**: Modern scientific and technical publishing system

The application is designed to be deployable on GitHub Pages and other web hosting platforms.
