
INSERT INTO users (username, email, password, bio) VALUES
                                                             ('john_doe', 'john_doe@example.com', 'password123', 'Hi, my name is John and I love my blue 2019 Ford Mustang GT with its powerful V8 engine and sleek design.'),
                                                             ('jane_smith', 'jane_smith@example.com', 'abc123', 'I am Jane and I adore my red 2021 Tesla Model Y with its cutting-edge technology and eco-friendly features.'),
                                                             ('bob_johnson', 'bob_johnson@example.com', 'mysecretpass', 'My name is Bob and I can\'t get enough of my black 2018 Chevrolet Camaro ZL1 with its supercharged V8 engine and aggressive styling.'),
                                                             ('mary_taylor', 'mary_taylor@example.com', 'password456', 'Hi, I am Mary and my white 2017 Audi A5 with its refined interior and powerful turbocharged engine always puts a smile on my face.'),
                                                             ('tom_harris', 'tom_harris@example.com', 'letmein', 'My name is Tom and I love cruising around in my silver 2022 Porsche 911 Turbo S with its stunning design and incredible performance capabilities.'),
                                                             ('samantha_wong', 'samantha_wong@example.com', 'pass123', 'Hi, I am Samantha and my green 2015 Mini Cooper S with its nimble handling and quirky style is always a blast to drive.'),
                                                             ('david_lee', 'david_lee@example.com', 'password789', 'My name is David and my black 2016 BMW M4 with its precise handling and powerful engine is my dream car.'),
                                                             ('lisa_kim', 'lisa_kim@example.com', 'lisa1234', 'Hi, my name is Lisa and I am in love with my blue 2020 Mercedes-Benz E-Class with its luxurious features and smooth ride.'),
                                                             ('mike_jackson', 'mike_jackson@example.com', 'qwerty123', 'My name is Mike and I am obsessed with my orange 2014 Dodge Challenger R/T with its classic muscle car look and powerful Hemi V8 engine.'),
                                                             ('kelly_brown', 'kelly_brown@example.com', 'mypassword', 'Hi, my name is Kelly and my silver 2019 Subaru WRX STI with its all-wheel drive system and rally car heritage is my ultimate performance machine.');

INSERT INTO ads (user_id, title, description, price, make, model, year, mpg, transmission) VALUES
                                                                                  (1, '2019 Ford Mustang GT', 'Excellent condition, low miles, blue exterior, black leather interior, 5.0L V8 engine, 6-speed manual transmission.', 35000, 'Ford', 'Mustang GT', 2019, 18, '6-speed manual'),
                                                                                  (2, '2021 Tesla Model Y', 'Like new, red exterior, black interior, electric motor, Autopilot, full self-driving capability.', 55000, 'Tesla', 'Model Y', 2021, 117, 'Automatic'),
                                                                                  (3, '2018 Chevrolet Camaro ZL1', 'Great condition, black exterior, red leather interior, 6.2L supercharged V8 engine, 10-speed automatic transmission.', 45000, 'Chevrolet', 'Camaro ZL1', 2018, 14, '10-speed automatic'),
                                                                                  (4, '2017 Audi A5', 'Excellent condition, low miles, white exterior, black leather interior, 2.0L turbocharged engine, 7-speed automatic transmission.', 28000, 'Audi', 'A5', 2017, 26, '7-speed automatic'),
                                                                                  (5, '2022 Porsche 911 Turbo S', 'Brand new, silver exterior, black leather interior, 3.8L twin-turbocharged flat-six engine, 8-speed PDK transmission.', 200000, 'Porsche', '911 Turbo S', 2022, 20, '8-speed PDK'),
                                                                                  (6, '2015 Mini Cooper S', 'Good condition, green exterior, black leather interior, 2.0L turbocharged engine, 6-speed manual transmission.', 15000, 'Mini', 'Cooper S', 2015, 30, '6-speed manual'),
                                                                                  (7, '2016 BMW M4', 'Excellent condition, black exterior, black leather interior, 3.0L twin-turbocharged engine, 7-speed dual-clutch transmission.', 40000, 'BMW', 'M4', 2016, 22, '7-speed dual-clutch'),
                                                                                  (8, '2015 Audi S4', 'Excellent condition, white exterior, black leather interior, 3.0L supercharged engine, 6-speed manual transmission.', 30000, 'Audi', 'S4', 2015, 21, '6-speed manual'),
                                                                                  (9, '2017 Mercedes-AMG C-Class', 'Excellent condition, silver exterior, black leather interior, 4.0L twin-turbocharged engine, 9-speed automatic transmission.', 45000, 'Mercedes-AMG', 'C-Class', 2017, 27, '9-speed automatic'),
                                                                                  (10, '2016 Volvo XC90', 'Excellent condition, black exterior, tan leather interior, 2.0L turbocharged engine, 8-speed automatic transmission.', 40000, 'Volvo', 'XC90', 2016, 20, '8-speed automatic');