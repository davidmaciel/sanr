library(dagitty)
library(ggdag)
library(cowplot)
g <-
  dagitty(
    'dag {
  A [pos="1,2"]
  C [pos="2,1"]
  Y [pos="2,0"]
  X [pos="0,0"]
  B [pos="1,1"]
  U [pos="0,1"]
             A -> U -> X -> Y
             A -> C -> Y
             U -> B
             C -> B
          }'
  )

collider <-
  dagitty(
    'dag {
    X [pos="-1,0"]
    Y [pos="1,0"]
    Z [pos="0,1"]
      X -> Z
    Y -> Z
    }'

  )

fork <-
  dagitty(
    'dag {
    X [pos="-1,0"]
    Y [pos="1,0"]
    Z [pos="0,1"]
      X <- Z
    Y <- Z
    }'

  )

pipe <-
  dagitty(
    'dag {
    X [pos="-1,0"]
    Y [pos="1,0"]
    Z [pos="0,0"]
      X -> Z -> Y
    }'

  )

fork <- ggdag(fork) +
  theme_dag_blank(base_size = 50)
pipe <- ggdag(pipe) +
  theme_dag_blank(base_size = 50)
collider <- ggdag(collider) +
  theme_dag_blank(50)

g <- ggdag(g) + theme_dag_blank(50)


save_plot("graphics/collider.jpeg", collider)
save_plot("graphics/fork.jpeg", fork)
save_plot("graphics/pipe.jpeg", pipe)
save_plot("graphics/dag_exemp.jpeg", g)
