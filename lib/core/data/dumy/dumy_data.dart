import 'package:ecomme/core/domain/model/prodact_model.dart';

final List<ProdactModel> dummyProducts = [
  ProdactModel(
    id: 1,
    name: 'قميص قطني صيفي',
    description: 'قميص خفيف ومريح مثالي لأيام الصيف الحارة.',
    price: 79.99,
    imagesUrl: 'assets/images/pp.jpg',
    discount: 10,
  ),
  ProdactModel(
    id: 2,
    name: 'حذاء رياضي رجالي',
    description: 'حذاء مريح للركض والمشي اليومي.',
    price: 149.50,
    imagesUrl: 'assets/images/pp.jpg',
  ),
  ProdactModel(
    id: 3,
    name: 'ساعة يد كلاسيكية',
    description: 'ساعة أنيقة بتصميم معدني مقاوم للماء.',
    price: 299.00,
    imagesUrl: 'assets/images/pp.jpg',
    discount: 25,
  ),
  ProdactModel(
    id: 4,
    name: 'نظارات شمسية',
    description: 'نظارات تحمي من الأشعة فوق البنفسجية بتصميم عصري.',
    price: 99.99,
    imagesUrl: 'assets/images/pp.jpg',
  ),
  ProdactModel(
    id: 5,
    name: 'حقيبة ظهر جلدية',
    description: 'حقيبة أنيقة للجامعة أو العمل مصنوعة من الجلد الطبيعي.',
    price: 199.90,
    imagesUrl: 'assets/images/pp.jpg',
    discount: 15,
  ),
];
