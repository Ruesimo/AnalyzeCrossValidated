/*drop table if exists `counted_subjects_per_tag_commentanswers`;*/
create table if not exists `counted_subjects_per_tag_commentanswers` (tag varchar(255), subject varchar(255), count int, primary key(tag, subject));
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'mad', 2);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'parameterization', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'stan', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'job', 2);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'confidence', 6);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'ram', 5);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'mode', 9);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('abbreviation', 'na', 2);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'ab-test', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'approximation', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('2sls', 'standard-error', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('abbreviation', 'gui', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'ratio', 3);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'bayes', 2);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('2sls', 'roc', 2);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'Ban (information)', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'iid', 3);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'log-likelihood', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'code', 10);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'power', 6);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'ranks', 2);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'W state', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'r', 99);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'car', 3);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 't-test', 3);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'T distribution', 9);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('2sls', 'hausman', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'correlation', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'books', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'checking', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'code', 6);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'ordinal', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'reliability', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'sample', 5);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('2sls', 'books', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('2sls', 'residuals', 3);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('abbreviation', 'r', 6);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'blog', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'discussion', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('2sls', 'regression', 2);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'bootstrap', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'generator', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'Zipf\'s law', 5);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('abbreviation', 'probability', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'Estimation theory', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'formula', 3);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'interval', 4);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'Test statistic', 2);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'binary', 5);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'optimization', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'permutation', 2);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('2sls', 'probability', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'bayesian', 2);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'r-project', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'Bayes error rate', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'web', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'D\'', 6);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('2sls', 'online', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'matrix', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'Design effect', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('2sls', 'nonlinearity', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'na', 29);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'rms', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'T distribution', 7);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('2sls', 'correlation', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'binning', 3);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'order', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'continuous', 2);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('2sls', 'var', 7);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'dataset', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'lm', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'package', 3);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'ward', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('2sls', '2sls', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'frequency', 5);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'order', 4);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'beta', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'perl', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('2sls', 'age', 3);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'population', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'monitoring', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'Tit for tat', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'Experiment', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('2sls', 'linear', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'Binomial test', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'pit', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'combination', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'standard', 2);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'Question', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'Test data', 2);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'ratio', 3);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('abbreviation', 'sse', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'Test set', 2);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'ica', 22);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'metric', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'Bayesian probability', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'effects', 2);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'A/B testing', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'model', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'empirical', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'references', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'prior', 6);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'Bayes\' rule', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'rating', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'formula', 3);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'simulation', 2);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'modeling', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'Estimation', 2);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'updating', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'uniform', 4);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('abbreviation', 'arch', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'blue', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'books', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'sources', 2);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'pooling', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'pdf', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'ewma', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'function', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('2sls', '', 24);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('2sls', 'beta', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'moderator', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'combination', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'sse', 2);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'calc', 2);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'Binomial distribution', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('2sls', 'matrix', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', '', 101);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'car', 13);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'na', 27);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'effects', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'model', 7);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('2sls', 'ica', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'assumptions', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'Generalized Pareto distribution', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'False positive rate', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'robust', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'sampling', 3);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'sse', 5);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'threshold', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'lme', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'mode', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('2sls', 'code', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('2sls', 'mode', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('abbreviation', 'abbreviation', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'sample', 12);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'stan', 6);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'outliers', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('abbreviation', 'age', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'age', 4);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'prediction', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('2sls', 'model', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'pit', 2);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'continuous', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('2sls', 'Mills ratio', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('abbreviation', 'stan', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'distributions', 2);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('2sls', 'Stata', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('2sls', 'calc', 3);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'roc', 4);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'interpretation', 3);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'var', 2);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'mad', 4);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'power', 5);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'Pareto distribution', 3);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'Statistic', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'ram', 5);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'zipf', 4);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('2sls', 'least-squares', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('2sls', 'notation', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'train', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'ranks', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'eda', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('abbreviation', 'notation', 2);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'Test method', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'updating', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'function', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'r', 49);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'var', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('2sls', 'nonlinear', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'theory', 2);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'dependence', 2);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('2sls', 'function', 2);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'probability', 2);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'probability', 2);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'precision', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'proportion', 2);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'resources', 2);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'maximum', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'web', 3);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('abbreviation', 'ica', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'aic', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'power-law', 4);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'dataset', 3);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'eda', 2);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('2sls', 'r', 22);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'distributions', 5);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('2sls', 'D\'', 5);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'matching', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'fitting', 3);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'science', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('abbreviation', '', 6);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('2sls', 'SPSS', 3);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'media', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'reporting', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('2sls', 'software', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'Central limit theorem', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'calc', 7);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'Power law', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'Base rate', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'credible-interval', 2);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'Eh', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'roc', 5);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'maximum', 2);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'methodology', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('2sls', 'stan', 6);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'arch', 2);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'age', 3);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'sampling', 3);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'truncation', 2);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('2sls', 'na', 7);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('2sls', 'ratio', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'elo', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('2sls', 'linearity', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'control', 3);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'exponential', 2);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'frequentist', 8);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'posterior', 3);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('2sls', 'excel', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', '', 49);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('2sls', 'standard', 3);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'multinomial', 1);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'accuracy', 2);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('ab-test', 'simulation', 3);
insert into `counted_subjects_per_tag_commentanswers` (`tag`,`subject`,`count`) values ('zipf', 'ica', 9);
