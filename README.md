# Employee Satisfaction Survey Analysis

Automated R Markdown pipeline that transforms raw survey data into a professional HTML report with interactive visualizations, statistical summaries, and actionable recommendations. Built for HR teams, consultants, and researchers who need fast, polished survey analytics.

## Problem it solves

Survey data typically arrives as a raw CSV with hundreds of responses across multiple Likert-scale questions. Turning this into an insight-rich report usually means hours in Excel building pivot tables and charts that look unprofessional.

This pipeline produces a publication-ready HTML report in seconds — with heatmaps, distribution plots, executive summaries, and data-driven recommendations.

## What it does

1. **Reads** raw survey CSV with demographic and Likert-scale data
2. **Analyzes** satisfaction across categories and segments (department, work mode, tenure)
3. **Visualizes** with ggplot2: bar charts, heatmaps, boxplots, donut charts
4. **Tables** formatted with kableExtra for publication quality
5. **Summarizes** key findings with dynamic executive summary
6. **Recommends** priority areas based on lowest-scoring categories

## Tech stack

- R 4.5
- tidyverse (dplyr, ggplot2, tidyr)
- R Markdown + knitr
- kableExtra (styled tables)
- scales (formatting)

## Usage

```bash
# Generate sample survey data
Rscript generate_survey.R

# Then open survey_analysis.Rmd in RStudio and click "Knit"
# Or render from command line:
Rscript -e "rmarkdown::render('survey_analysis.Rmd')"
```

Output: `survey_analysis.html` — a standalone, shareable report with:
- Floating table of contents
- Responsive design
- Interactive code folding (show/hide code per section)
- Professional styling (cosmo theme)

## Sample insights generated

- Average satisfaction scores by category with color-coded performance
- Department × metric heatmap showing where to focus improvements
- Work mode comparison (Remote vs Hybrid vs On-site)
- Referral intent breakdown (NPS-style)
- Priority recommendations based on data

## Customization

Easy to adapt for:
- Customer satisfaction surveys (CSAT, NPS)
- Academic research surveys
- Market research analysis
- Post-event feedback reports

Contact me to adapt this pipeline to your specific data structure.

## Author

Ibrahim Adippe — Data analyst specialized in automated reporting with Python and R.