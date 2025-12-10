import 'package:ecomme/core/domain/model/prodact_model.dart';

final List<ProdactModel> dummyProducts = [
  ProdactModel(
    id: "1",
    name: 'قميص قطني صيفي',
    description: 'قميص خفيف ومريح مثالي لأيام الصيف الحارة.',
    price: 100000,
    imagesUrl: 'assets/images/pp.jpg',
    discount: 75000,
  ),
  ProdactModel(
    id: "2",
    name: 'حذاء رياضي رجالي',
    description: 'حذاء مريح للركض والمشي اليومي.',
    price: 149000,
    discount: 149000,
    imagesUrl: 'assets/images/pp.jpg',
  ),
  ProdactModel(
    id: "3",
    name: 'ساعة يد كلاسيكية',
    description: 'ساعة أنيقة بتصميم معدني مقاوم للماء.',
    price: 299000,
    imagesUrl: 'assets/images/pp.jpg',
    discount: 200000,
  ),
  ProdactModel(
    id: "4",
    name: 'نظارات شمسية',
    description: 'نظارات تحمي من الأشعة فوق البنفسجية بتصميم عصري.',
    price: 99000,
    imagesUrl: 'assets/images/pp.jpg',
    discount: 70000,
  ),
  ProdactModel(
    id: "5",
    name: 'حقيبة ظهر جلدية',
    description: 'حقيبة أنيقة للجامعة أو العمل مصنوعة من الجلد الطبيعي.',
    price: 120000,
    imagesUrl: 'assets/images/pp.jpg',
    discount: 100000,
  ),
];
