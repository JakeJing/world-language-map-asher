#!/bin/bash

# World Languages Map Deployment Script
# This script builds the Quarto document and prepares it for GitHub Pages deployment

echo "🌍 Building World Languages Map for deployment..."

# Check if Quarto is installed
if ! command -v quarto &> /dev/null; then
    echo "❌ Quarto is not installed. Please install Quarto first:"
    echo "   https://quarto.org/docs/get-started/"
    exit 1
fi

# Check if R is installed
if ! command -v R &> /dev/null; then
    echo "❌ R is not installed. Please install R first:"
    echo "   https://cran.r-project.org/"
    exit 1
fi

# Install required R packages if not already installed
echo "📦 Checking and installing required R packages..."
R --slave -e "
packages <- c('sf', 'leaflet', 'dplyr', 'DT', 'plotly', 'viridis', 'RColorBrewer')
missing_packages <- packages[!packages %in% installed.packages()[,'Package']]
if(length(missing_packages) > 0) {
  cat('Installing missing packages:', missing_packages, '\n')
  install.packages(missing_packages, repos='https://cran.rstudio.com/')
} else {
  cat('All required packages are already installed.\n')
}
"

# Build the Quarto document
echo "🔨 Building Quarto document..."
quarto render language-map.qmd

# Create docs directory if it doesn't exist
mkdir -p docs

# Copy built files to docs directory
echo "📁 Copying files to docs directory..."
mv language-map.html docs/index.html
rm -rf docs/language-map_files
mv language-map_files docs/
mv styles.css docs/
mv about.md docs/

# Create a simple index page if needed
if [ ! -f docs/index.html ]; then
    echo "⚠️  Warning: index.html not found. Creating a simple redirect..."
    cat > docs/index.html << 'EOF'
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>World Languages Map</title>
    <meta http-equiv="refresh" content="0; url=language-map.html">
</head>
<body>
    <p>Redirecting to <a href="language-map.html">World Languages Map</a>...</p>
</body>
</html>
EOF
fi

echo "✅ Build complete! Files are ready in the docs/ directory."
echo ""
echo "📋 Next steps:"
echo "1. Commit and push your changes:"
echo "   git add ."
echo "   git commit -m 'Update language map visualization'"
echo "   git push origin main"
echo ""
echo "2. Enable GitHub Pages in your repository settings:"
echo "   - Go to Settings > Pages"
echo "   - Source: Deploy from a branch"
echo "   - Branch: main, Folder: /docs"
echo ""
echo "3. Your site will be available at:"
echo "   https://yourusername.github.io/your-repo-name/"
echo ""
echo "🎉 Happy mapping!"
