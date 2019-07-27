## ----echo = FALSE--------------------------------------------------------
pkgn <- 'wyz.code.offensiveProgramming'
sf <- system.file('life-cycle/data-1.01.001.rds', package = pkgn)
dt_1.01.001 <- readRDS(sf)
DT::datatable(dt_1.01.001, options(paging = FALSE))

## ----echo = FALSE--------------------------------------------------------
pkgn <- 'wyz.code.offensiveProgramming'
sf <- system.file('life-cycle/data-1.01.002.rds', package = pkgn)
dt_1.01.002 <- readRDS(sf)
DT::datatable(dt_1.01.002, options(paging = FALSE))

## ----echo = FALSE--------------------------------------------------------
pkgn <- 'wyz.code.offensiveProgramming'
sf <- system.file('life-cycle/data-1.01.003.rds', package = pkgn)
dt_1.01.003 <- readRDS(sf)
DT::datatable(dt_1.01.003, options(paging = FALSE))

## ----echo = FALSE--------------------------------------------------------
pkgn <- 'wyz.code.offensiveProgramming'
sf <- system.file('life-cycle/data-1.01.004.rds', package = pkgn)
dt_1.01.004 <- readRDS(sf)
DT::datatable(dt_1.01.004, options(paging = FALSE))

## ----echo = FALSE--------------------------------------------------------
sf <- system.file("life-cycle/data-1.01.005.rds", package = "wyz.code.offensiveProgramming")
ds <- readRDS(sf)
DT::datatable(ds, options(paging = FALSE))

## ----echo = FALSE--------------------------------------------------------
sf <- system.file("life-cycle/data-1.01.006.rds", package = "wyz.code.offensiveProgramming")
ds <- readRDS(sf)
DT::datatable(ds, options(paging = FALSE))

## ----echo = FALSE--------------------------------------------------------
sf <- system.file("life-cycle/data-1.01.007.rds", package = "wyz.code.offensiveProgramming")
ds <- readRDS(sf)
DT::datatable(ds, options(paging = FALSE))

