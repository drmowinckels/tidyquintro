library(tidyverse)
library(MOAS)
library(gganimate)


# Filtering ----
dt <- tibble(
  rows = 1:8,
  fill = factor(sample(1:2, size = 8, replace = TRUE),
                   labels = c("keep", "discard")),
  col1 = 1, col2 = 2, col3 = 3, col4 = 4, col5 = 5
)

dt %>%
  mutate(panel = 1) %>%
  gather(key, columns, contains("col")) %>%
  bind_rows( filter(dt, fill == "keep") %>%
               mutate(panel = 2,
                      rows = row_number()) %>%
      gather(key, columns, contains("col"))
  ) %>%

ggplot(aes(x = columns, y = rows)) +
  geom_tile(aes(fill = fill),
            colour = lcbc_cols("dark grey"),
            alpha = .7) +
  theme_minimal() +
  theme(panel.grid = element_blank()) +
  scale_fill_lcbc() +
  scale_x_continuous(position = "top") +
  scale_y_reverse() +
  labs(fill = "grouping", title  = "dplyr `filter(data, grouping == 'keep')`") +
  # facet_wrap(~panel) +
  transition_states(panel) +
  enter_fade() +
  exit_fade() +
  NULL

anim_save("filtering.gif",
          path = here::here("docs/gifs"))


# Selecting ----
dt <- tibble(
  rows = 1:8,
  col1 = 1, col2 = 2, col3 = 3, col4 = 4, col5 = 5
) %>%
  gather(key, columns, contains("col"))

dt %>%
  mutate(panel = 1,
         fill = ifelse(key %in% paste0("col", c(1,2,4)), "keep", "discard")) %>%
  bind_rows(
    filter(dt, key %in% paste0("col", c(1,2,4))) %>%
      mutate(panel = 2,
             key = ifelse(key == "col4", "col3", key),
             columns = ifelse(columns == 4, 3, columns),
             fill = "keep")
  ) %>%

  ggplot(aes(x = columns, y = rows)) +
  geom_tile(aes(fill = fill),
            colour = lcbc_cols("dark grey"),
            alpha = .7) +
  theme_minimal() +
  theme(panel.grid = element_blank()) +
  scale_fill_lcbc() +
  scale_x_continuous(position = "top") +
  scale_y_reverse() +
  labs(fill = "grouping", title  = "dplyr `select(data, 1, 2, 4)`") +
  # facet_wrap(~panel) +
  transition_states(panel) +
  enter_fade() +
  exit_fade() +
  NULL

anim_save("selecting.gif",
          path = here::here("docs/gifs"))



# Tall vs wide ----
dt <- tibble(
  subject = factor(rep(1:2, each = 2)),
  rows = c(1:2, 3:4),
  col1 = 1, col2 = 2, col3 = 3
) %>%
  gather(key, columns, contains("col")) %>%
  mutate(panel = 1)

tall_dt <- mutate(dt, panel = 2) %>%
  bind_rows(
    mutate(dt,
           panel = 2,
           columns = columns + 3)
  ) %>%
  group_by(subject, columns, panel) %>%
  summarise(rows = 1) %>%
  ungroup() %>%
  mutate(rows = ifelse(subject == 1, 1, 2))


dt %>%
  bind_rows(tall_dt)  %>%

  ggplot(aes(x = columns, y = rows)) +
  geom_tile(aes(fill = subject),
            colour = lcbc_cols("dark grey"),
            alpha = .7) +
  theme_minimal() +
  theme(panel.grid = element_blank()) +
  scale_fill_lcbc() +
  scale_x_continuous(position = "top") +
  scale_y_reverse() +
  labs(fill = "grouping", title  = "tidyr `pivot_wider / pivot_longer`") +
  # facet_wrap(~panel) +
  transition_states(panel) +
  enter_fade() +
  exit_fade() +
  NULL

anim_save("tall_wide.gif",
          path = here::here("docs/gifs"))
