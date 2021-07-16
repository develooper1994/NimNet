from ../../src/common import matrix,vector

# this is just a quick temporary data set until a function is created to mimic Sentdex's function

var X* = matrix(@[@[-0.00000000e+00,  0.00000000e+00],
 @[ 3.24977211e-03,  9.56396290e-03],
 @[-8.43779848e-03,  1.83555217e-02],
 @[ 9.12298327e-03,  2.88971421e-02],
 @[ 2.94397657e-02,  2.76728509e-02],
 @[ 4.17657921e-02,  2.83968086e-02],
 @[ 2.22000187e-02,  5.63937386e-02],
 @[ 6.31847536e-02,  3.17360483e-02],
 @[ 7.63323768e-02,  2.65200713e-02],
 @[ 9.08170254e-02,  4.09031815e-03],
 @[ 9.40875144e-02,  3.67502399e-02],
 @[ 1.01862345e-01, -4.43817727e-02],
 @[ 5.62842335e-02,  1.07352053e-01],
 @[ 1.19823007e-01,  5.37176448e-02],
 @[ 1.38897710e-01,  2.65590949e-02],
 @[ 1.51067622e-01,  1.16367818e-02],
 @[ 1.59821175e-01,  2.40203178e-02],
 @[ 1.62988442e-01,  5.40514099e-02],
 @[ 1.80920212e-01, -1.80479357e-02],
 @[-5.10104787e-02, -1.85015965e-01],
 @[ 8.71236959e-02, -1.82268000e-01],
 @[ 2.03733905e-01, -5.90584853e-02],
 @[ 1.46434878e-01, -1.67151257e-01],
 @[ 1.23908584e-01, -1.96521620e-01],
 @[ 1.18472981e-01, -2.11503348e-01],
 @[ 2.48104983e-01, -4.70416882e-02],
 @[ 1.33111744e-01, -2.26393060e-01],
 @[ 2.18339948e-01, -1.63425311e-01],
 @[ 2.42858753e-01, -1.44953316e-01],
 @[ 5.64766625e-02, -2.87433396e-01],
 @[ 1.36583292e-01, -2.70503916e-01],
 @[ 9.86666138e-02, -2.97180280e-01],
 @[-2.94057851e-02, -3.21891961e-01],
 @[-1.52481134e-01, -2.96412913e-01],
 @[-1.25399340e-01, -3.19721995e-01],
 @[-2.59204374e-02, -3.52583858e-01],
 @[-6.62081541e-02, -3.57558226e-01],
 @[-1.93345818e-01, -3.19839052e-01],
 @[ 1.11016933e-01, -3.67433185e-01],
 @[-3.31538926e-01, -2.12767918e-01],
 @[-3.89402259e-01, -1.07770725e-01],
 @[-3.78111734e-01, -1.68951554e-01],
 @[-1.82122559e-01, -3.83161856e-01],
 @[-1.34872275e-01, -4.12872484e-01],
 @[-4.41901780e-01, -4.74729546e-02],
 @[-4.31385988e-01, -1.43240008e-01],
 @[-4.51916320e-01,  1.08018409e-01],
 @[-4.39822537e-01, -1.78721294e-01],
 @[-4.84125158e-01,  2.64742285e-02],
 @[-3.93869504e-01,  2.99736244e-01],
 @[-5.02668324e-01, -4.89955994e-02],
 @[-4.45876123e-01,  2.58022415e-01],
 @[-3.73486528e-01,  3.69321037e-01],
 @[-2.69883465e-01,  4.62348703e-01],
 @[-5.38676183e-01,  8.57241568e-02],
 @[-3.35119742e-01,  4.43099011e-01],
 @[-4.18204683e-01,  3.80883438e-01],
 @[-4.48892504e-01,  3.60544457e-01],
 @[ 1.07167680e-01,  5.75973412e-01],
 @[-1.66435942e-01,  5.72247252e-01],
 @[-4.38288605e-01,  4.18583991e-01],
 @[ 1.81027384e-01,  5.88968780e-01],
 @[ 2.41323183e-01,  5.77899644e-01],
 @[-2.11526957e-01,  6.00179160e-01],
 @[ 4.86101027e-01,  4.26171715e-01],
 @[ 1.53018862e-01,  6.38485465e-01],
 @[ 6.06448001e-01,  2.76884933e-01],
 @[ 9.76684706e-02,  6.69683028e-01],
 @[-6.77766092e-02,  6.83516587e-01],
 @[ 6.91470338e-01,  8.73815174e-02],
 @[ 7.02985904e-01,  7.58933652e-02],
 @[ 3.06398205e-01,  6.48425332e-01],
 @[ 1.67670224e-01,  7.07680942e-01],
 @[ 7.01623270e-01,  2.26814496e-01],
 @[ 7.16577286e-01,  2.12686368e-01],
 @[ 7.09008007e-01,  2.66887007e-01],
 @[ 7.03563437e-01,  3.07125560e-01],
 @[ 7.74908516e-01, -6.67462641e-02],
 @[ 3.10097975e-01, -7.24287395e-01],
 @[ 7.62605565e-01, -2.34956400e-01],
 @[ 6.46570082e-01, -4.84707872e-01],
 @[ 7.90449500e-01,  2.11213343e-01],
 @[ 6.94303744e-01, -4.51657785e-01],
 @[ 5.08398921e-01, -6.66646831e-01],
 @[ 6.45101846e-01, -5.51153469e-01],
 @[ 4.41357960e-01, -7.36459658e-01],
 @[ 6.04160155e-01, -6.24185375e-01],
 @[ 7.45091275e-01, -4.65947559e-01],
 @[ 5.49738126e-01, -6.98506585e-01],
 @[ 4.34364946e-01, -7.87089532e-01],
 @[ 1.39305072e-01, -8.98354261e-01],
 @[ 5.93247342e-02, -9.17275509e-01],
 @[ 2.73348897e-01, -8.88181135e-01],
 @[-5.92547242e-01, -7.28936718e-01],
 @[-4.56417882e-01, -8.32600370e-01],
 @[ 2.50821402e-01, -9.26235947e-01],
 @[-9.58435029e-01,  1.47358436e-01],
 @[-6.09679091e-01, -7.67004229e-01],
 @[-7.20875139e-01, -6.78409201e-01],
 @[-8.65912142e-01, -5.00196123e-01],
 @[-0.00000000e+00, -0.00000000e+00],
 @[-5.66911065e-03, -8.36011899e-03],
 @[-1.82254971e-02, -8.71509469e-03],
 @[-2.27010397e-02, -2.00732768e-02],
 @[-3.93520727e-02, -9.15974111e-03],
 @[-5.04976270e-02,  8.65908097e-04],
 @[-6.00723873e-02, -8.02513993e-03],
 @[-5.12744420e-02, -4.86869741e-02],
 @[-5.93553968e-02, -5.48350508e-02],
 @[-8.83579353e-02,  2.13854643e-02],
 @[-9.50233282e-02,  3.42579568e-02],
 @[-9.76733295e-02,  5.29679121e-02],
 @[-1.21121911e-01,  4.67556403e-03],
 @[-1.00091921e-01,  8.49985049e-02],
 @[-1.40363381e-01,  1.72069936e-02],
 @[-1.49239658e-01,  2.61603846e-02],
 @[-1.58332211e-01,  3.24144213e-02],
 @[-1.62330951e-01,  5.59950843e-02],
 @[-1.67252393e-01,  7.13055980e-02],
 @[-2.68160376e-02,  1.90036513e-01],
 @[-1.50383671e-01,  1.34895936e-01],
 @[-1.69836642e-01,  1.27086284e-01],
 @[ 1.38946236e-02,  2.21787411e-01],
 @[ 1.04521026e-02,  2.32087996e-01],
 @[ 9.58142627e-02,  2.22686193e-01],
 @[-8.40979485e-02,  2.38110349e-01],
 @[ 1.55298687e-01,  2.11789688e-01],
 @[ 2.65944247e-01,  6.04468601e-02],
 @[-2.05486930e-02,  2.82080820e-01],
 @[ 2.18765846e-01,  1.94805224e-01],
 @[ 3.34255267e-02,  3.01181173e-01],
 @[ 2.04578444e-01,  2.37063028e-01],
 @[ 2.52745618e-01,  2.01491408e-01],
 @[ 2.85563718e-01,  1.71943228e-01],
 @[ 3.33643394e-01,  8.14201063e-02],
 @[ 3.44908658e-01,  7.76225751e-02],
 @[ 3.61616502e-01, -3.82741522e-02],
 @[ 1.16713353e-01,  3.55045937e-01],
 @[ 2.76299093e-01,  2.66440831e-01],
 @[ 3.92043566e-01, -3.86016677e-02],
 @[ 3.97052745e-01, -7.48182190e-02],
 @[ 3.72150051e-01, -1.81707046e-01],
 @[ 3.29259664e-01, -2.67525155e-01],
 @[ 4.06623200e-01, -1.52681998e-01],
 @[ 4.44388545e-01,  7.04875489e-03],
 @[ 2.40631805e-01, -3.85626639e-01],
 @[ 2.61299522e-01, -3.84212047e-01],
 @[ 1.00826329e-01, -4.63917251e-01],
 @[ 4.25515578e-01, -2.32410297e-01],
 @[ 4.93973134e-01,  3.10732349e-02],
 @[ 4.45081197e-01, -2.38702201e-01],
 @[ 4.56833060e-01, -2.38085360e-01],
 @[ 2.69347072e-01, -4.50934996e-01],
 @[ 4.79993255e-01, -2.37086235e-01],
 @[ 1.17141366e-01, -5.32727474e-01],
 @[ 2.41113737e-02, -5.55032086e-01],
 @[-1.24222527e-01, -5.51847908e-01],
 @[ 3.57813639e-01, -4.51072262e-01],
 @[-3.76310172e-01, -4.49022201e-01],
 @[-1.90467323e-01, -5.64703496e-01],
 @[-1.25186700e-01, -5.92990513e-01],
 @[-3.50605526e-01, -5.06686197e-01],
 @[-4.98842542e-01, -3.78630420e-01],
 @[ 1.06552364e-02, -6.36274425e-01],
 @[-6.46123333e-01, -2.10042276e-02],
 @[-1.81483136e-01, -6.30985208e-01],
 @[-4.06033528e-01, -5.28754403e-01],
 @[-4.74534644e-01, -4.82526020e-01],
 @[-4.30002999e-01, -5.35617414e-01],
 @[-5.63517509e-01, -4.10139946e-01],
 @[-6.40218893e-01, -3.00114568e-01],
 @[-6.67153625e-01, -2.63137441e-01],
 @[-7.23765977e-01, -7.13332389e-02],
 @[-7.02713094e-01, -2.23415166e-01],
 @[-6.37808872e-01,  3.89767034e-01],
 @[-6.83953124e-01, -3.25774696e-01],
 @[-7.50693038e-01,  1.60585124e-01],
 @[-7.55716833e-01, -1.83930257e-01],
 @[-1.73645627e-01,  7.68505160e-01],
 @[-7.95578236e-01, -6.18629840e-02],
 @[ 2.00385171e-02,  8.07832316e-01],
 @[-6.54817021e-01,  4.90546793e-01],
 @[-2.41944502e-01,  7.92158634e-01],
 @[-4.49098868e-01,  7.07953153e-01],
 @[-7.35414652e-01,  4.23192425e-01],
 @[-4.96810595e-01,  7.00249176e-01],
 @[ 3.65813735e-01,  7.87906839e-01],
 @[ 2.84851357e-02,  8.78326097e-01],
 @[-2.93109675e-01,  8.39172316e-01],
 @[ 6.85576143e-02,  8.96371961e-01],
 @[ 9.01883257e-01,  1.14249169e-01],
 @[-4.63118230e-01,  7.93999553e-01],
 @[ 6.91636812e-01,  6.20664055e-01],
 @[ 3.45075744e-01,  8.73718321e-01],
 @[ 5.89338576e-01,  7.44460007e-01],
 @[-1.49475965e-01,  9.47882557e-01],
 @[ 1.23330810e-01,  9.61822086e-01],
 @[ 4.58142282e-01,  8.66088755e-01],
 @[ 8.35149192e-01,  5.31437520e-01],
 @[ 8.45446856e-01,  5.34059560e-01],
 @[ 0.00000000e+00,  0.00000000e+00],
 @[ 1.01002639e-02, -1.22773742e-04],
 @[ 2.00011397e-02,  2.84183577e-03],
 @[ 2.85695944e-02,  1.01020752e-02],
 @[ 2.19945843e-02,  3.38928421e-02],
 @[ 4.69940155e-02, -1.85019630e-02],
 @[ 5.99030387e-02, -9.20437622e-03],
 @[ 5.73189784e-02,  4.14007798e-02],
 @[ 7.28070543e-02,  3.50582197e-02],
 @[ 7.87000466e-02, -4.55056642e-02],
 @[ 2.47909579e-02, -9.79206256e-02],
 @[ 1.04668530e-01, -3.72850893e-02],
 @[ 1.19309125e-01, -2.13941828e-02],
 @[ 1.14605189e-01, -6.40998368e-02],
 @[-2.99481646e-02, -1.38206609e-01],
 @[ 1.16552188e-01, -9.68113038e-02],
 @[ 1.55108428e-01, -4.53999934e-02],
 @[ 1.46286388e-01, -8.99281915e-02],
 @[-5.91796293e-03, -1.81721845e-01],
 @[ 1.71322147e-02, -1.91152984e-01],
 @[-3.58314525e-02, -1.98817175e-01],
 @[ 2.01828257e-01, -6.52745234e-02],
 @[ 8.33557866e-02, -2.05996429e-01],
 @[-1.49098809e-01, -1.78167420e-01],
 @[-1.46505339e-01, -1.93146832e-01],
 @[-2.14570619e-01, -1.33148236e-01],
 @[-1.97400217e-01, -1.73221558e-01],
 @[-2.04401453e-01, -1.80555286e-01],
 @[-1.31373921e-01, -2.50465028e-01],
 @[-6.88112413e-02, -2.84732477e-01],
 @[-2.82542274e-01, -1.09531857e-01],
 @[-3.08479747e-01, -5.37723447e-02],
 @[-2.64783723e-01, -1.85388011e-01],
 @[-3.30441118e-01,  4.38152765e-02],
 @[-2.99771314e-01,  1.67583732e-01],
 @[-2.63656071e-01, -2.35526479e-01],
 @[-3.61877883e-01, -3.57183790e-02],
 @[-3.45501487e-01,  1.42507358e-01],
 @[-3.06141807e-01,  2.31536388e-01],
 @[-3.73576854e-01,  1.25014321e-01],
 @[-3.42976481e-01,  2.13578513e-01],
 @[-3.32416366e-01,  2.47007025e-01],
 @[-2.93839071e-01,  3.06006920e-01],
 @[-2.69329857e-01,  3.40757461e-01],
 @[-3.40155036e-01,  2.86051421e-01],
 @[-3.76684074e-01,  2.54402592e-01],
 @[-1.67315190e-01,  4.33476602e-01],
 @[-3.30745843e-01,  3.40576499e-01],
 @[-1.80222315e-01,  4.50108843e-01],
 @[-3.54522333e-01,  3.45382278e-01],
 @[-4.07191153e-01,  2.98783161e-01],
 @[-7.16462934e-02,  5.10144972e-01],
 @[-1.03422133e-01,  5.14969977e-01],
 @[ 4.63145792e-01,  2.68513283e-01],
 @[-8.42532477e-02,  5.38908203e-01],
 @[ 4.19770481e-01,  3.63915812e-01],
 @[ 4.28535248e-01,  3.69222008e-01],
 @[ 5.78370388e-02,  5.72845235e-01],
 @[-2.31781439e-02,  5.85399911e-01],
 @[ 5.67234386e-01,  1.82792208e-01],
 @[ 5.90930138e-01,  1.34577228e-01],
 @[ 6.08310316e-01,  9.80494593e-02],
 @[ 6.23378757e-01, -6.00316812e-02],
 @[ 5.95252547e-01, -2.25017960e-01],
 @[ 6.16121014e-01,  1.95733071e-01],
 @[ 6.39008958e-01,  1.50817813e-01],
 @[ 4.81340979e-01, -4.61254059e-01],
 @[ 6.76497108e-01, -1.91350710e-02],
 @[ 6.39002368e-01,  2.51921746e-01],
 @[ 6.63683563e-01, -2.12816556e-01],
 @[ 2.59400616e-01, -6.57769188e-01],
 @[ 7.17160659e-01, -3.98255164e-03],
 @[ 3.99120839e-01, -6.07970539e-01],
 @[ 6.73690996e-01, -2.99767361e-01],
 @[ 5.58042537e-01, -4.97299733e-01],
 @[ 5.03779926e-02, -7.55898860e-01],
 @[-4.01265162e-01, -6.54456942e-01],
 @[ 6.62290649e-01, -4.07810456e-01],
 @[ 8.40645941e-02, -7.83381215e-01],
 @[-2.60151634e-01, -7.54382453e-01],
 @[-4.71931663e-01, -6.55953579e-01],
 @[ 1.79965724e-01, -7.98143988e-01],
 @[ 2.87653097e-01, -7.76729129e-01],
 @[-5.90664500e-01, -5.94981436e-01],
 @[ 3.36344426e-02, -8.47817942e-01],
 @[-1.79906530e-01, -8.39525650e-01],
 @[-6.67556252e-01, -5.55864666e-01],
 @[-5.43784283e-01, -6.90338170e-01],
 @[-1.92860095e-01, -8.67714493e-01],
 @[-8.98537520e-01,  2.85160142e-02],
 @[-6.23173434e-01, -6.61892100e-01],
 @[-5.90446632e-01, -7.04476089e-01],
 @[-9.24784014e-01,  9.14323570e-02],
 @[-8.92540569e-01, -2.92971509e-01],
 @[-5.37568043e-01, -7.82662928e-01],
 @[-9.36693284e-01, -2.08398890e-01],
 @[-9.23311640e-01,  2.96323858e-01],
 @[-8.85095133e-01, -4.20250742e-01],
 @[-9.31480112e-01,  3.35029568e-01],
 @[-9.23880301e-01,  3.82681577e-01]])

var y* = vector(@[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0,
 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0,
 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0,
 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0,
 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0,
 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2, 2, 2, 2,
 2.0, 2.0, 2.0, 2.0])