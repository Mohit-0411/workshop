CREATE TABLE ai_models
(
    model_id     INT PRIMARY KEY,
    model_name   VARCHAR(100),
    student_name VARCHAR(100),
    algorithm    VARCHAR(50),
    accuracy     DECIMAL(5, 2),
    trained_on   DATE
);


INSERT INTO ai_models (model_id, model_name, student_name, algorithm, accuracy, trained_on)
VALUES (1, 'Viscious', 'Ram', 'CNN', 94.50, '2026-05-31'),
       (2, 'Textex', 'Shyam', 'RNN', 89.20, '2026-05-15'),
       (3, 'PredictorX', 'Chine', 'CNN', 91.80, '2026-05-31'),
       (4, 'ClutchMaster', 'Dinesh', 'SVM', 85.40, '2026-04-20'),
       (5, 'Hacker', 'Esha', 'RNN', 88.15, '2026-05-01');

SELECT *
FROM ai_models;

SELECT model_name, student_name, accuracy
FROM ai_models;

INSERT INTO ai_models (model_id, model_name, student_name, algorithm, accuracy, trained_on)
VALUES (6, 'Automoto', 'Freak', 'SVM', 92.00, CURRENT_DATE);

