
# Sections
Hugo plus treats all 'types' of pages as 'sections', whereas Hugo's page types
	have slight variations and data object model.


# Configuration
Sections contain settings which should persist across theme and layout changes.
	It also contains settings for parameters which may benefit from being
	applied to individual Sections as opposed to being applied once, site-wide.

Section controls which components are enabled/disabled. This is defined here
	because these components aren't dependent on the theme, but are more
	dependent on the representation of the content of the section.

Theming for sections is specified within the Theme config file defined within
	`.Site.Params.theme`. Layouts are defined there because the available
	layouts may be dependent on the actual theme.


