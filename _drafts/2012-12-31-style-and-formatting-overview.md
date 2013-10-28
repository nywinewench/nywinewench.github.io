---
title: Style and Formatting Overview

subtitle: How to Write Posts in Markdown to Achieve Maximum Publishing Efficiency and Increase Your Health, Vitality, and Virility!

layout: entry

category: Web Development

tags:
  - HTML
  - YAML
  - markdown

tweet: "This is the message that will be tweeted or shared on facebook. It should be enclosed in quotation marks for safety."

wine:
  winery: Arrowhead Spring Vineyards
  vintage: 2005
  name: Vidal Blanc Icewine
---

Welcome to your new website! To quickly get started publishing entries, simply follow this handy template. We'll cover YAML front-matter, basic Markdown syntax, and how these come together to form a blog entry. This is _closer to the metal_ than standard content management systems, but will also prove more flexible, valuable, and rewarding in time.

## YAML Front-matter

The first part of an entry is always comprised of the [YAML front-matter](http://jekyllrb.com/docs/frontmatter/), which will look very similar to above.

- **title** sets the title for website and the`<h1>` atop each entry.
- **subtitle** sets the subtitle for the entry
- **layout** determines the page wrapper, and for now should always be set
  to _entry_.
- **category** sets the entry's category, which can be thought of as the folder
  into which this post would go if you were filing it away. Each entry can have
  only a single category.
- **tags** list specific, recurring subjects within entries, such as people,
  places, types of grapes, etc. Each entry can have multiple tags.
- **tweet** is the summary message that will appear in a tweet or facebook share
  when somebody clicks any of the "share" buttons

## Markdown

After the front-matter, the body of your posts is written in [Markdown](http://daringfireball.net/projects/markdown/dingus). The basic available styles are detailed below, buffered with Lorem Ipsum text.

## The Second Heading

### The Third Heading

#### The Fourth Heading

In-line styles include _italics_ and **bold**. Markdown also includes support for bulleted lists...

- an item
- another item
- no particular order
  - also lists can be nested
  - just like this

and numbered lists...

1. the first item
2. the second item
3. the third item

Quotes from individuals can be cited via the following syntax...

> This represents somebody's quote. Curabitur diam leo, consequat ultrices consequat vitae, varius nec metus. Interdu et malesuada fames ac ante ipsum primis in faucibus.

Finally, photos can be set into the entry like below. 

![holding a grape cluster](/photos/harvesting_grapes_in_madison.jpg "Harvesting grapes in Madison, WI")

The maximum width of any photo that you add should be 800px. However, you can add photos of widths less than 800px (for example, this image, which is 600px wide) and it will float to the left, meaning that text will wrap around it to the right. It'll be up to you to ensure that where you place photos looks pleasing when published.

This is a bunch of filler text that I'm writing just to ensure that the text wraps around the image. No big deal. Hey! It's better than Lorem Ipsum!

The three pieces of data represent, in order:

- **Alternate photo text**, usually a concise and literal description of the
  photo (read aloud via screen-readers for the blind)
- **The photo location**, usually prefixed by `/photos/`, the main photo
  directory, though they can be placed elsewhere or organized manually so long
  as they are properly linked
- **The photo title**, which usually serves as a caption (and may in a future update)

And that's all there is to writing an entry! Of course once you've done that, you have to commit the file and push it to Github, but that's left for another lesson.
