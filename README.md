# jekyll-treatment
Script collection treated by Jekyll.

## Environment
- ruby 2.6.0
- jekyll (3.7.4)
- minima (2.5.0)
- kramdown (1.17.0)

## 1. Minima
https://github.com/jekyll/minima PJ

### Runnable

``` .sh
git clone git@github.com:ogasawaraShinnosuke/jekyll-treatment.git
cd jekyll-treatment
mv jekyll-treatment/bin/minima-create-post.rb {% TODO jekyll's minima directory %}
cd {% TODO jekyll's minima directory %}
ruby ./minima-create-post.rb -n setup-network-postfix
```

### Please refer to the following command.
`ruby ./minima-create-post.rb -n filename (options: -d date -c category -t tag)`

#### Arguments
##### Required
- `-n`: filename

##### Options
- `-d`: created date
- `-c`: category(Comma separated if multiple specifications)
- `-t`: tag(Comma separated if multiple specifications)

#### Examples
- When creating with minimum configuration
  - `ruby ./minima-create-post.rb -n setup-network-postfix`
- When creating past and future articles
  - `ruby ./minima-create-post.rb -n setup-network-postfix -d 2015-07-03 -c infra,network -t linux,postfix`

## 2. Others1

## 3. Others2

# Notice
I am glad that you can get PR if you are interesting :shipit: . Please give me a bug report [here](https://github.com/ogasawaraShinnosuke/jekyll-treatment/issues/new).
