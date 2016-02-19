import 'package:test/test.dart';
import 'mathobjects.dart';

void main() {
    group("Vector3", () {
        var va = new Vector3(0.2, 2, 4);
        var vb = new Vector3(0.8, 16, 32);
        test("Vector3 eqality", () {
            expect(va, equals(new Vector3(0.2, 2, 4)));
            expect(va, isNot(equals(new Vector3(0.2, 2, 5))));
            expect(va, isNot(equals(new Vector3(0.2, 3, 4))));
            expect(va, isNot(equals(new Vector3(1, 2, 4))));
        });

        test("Vector3 addition", () {    
            expect(va + vb, equals(new Vector3(1, 18, 36)));
        });

        test("Vector3 substraction", () {
            expect(va - vb, equals(new Vector3(-0.6, -14, -28)));
        });
        
        test("Vector3 zero", () {
            expect(Vector3.zero(), equals(new Vector3(0, 0, 0)));
        });

        test("Vector3 inversion", () {
            expect(va.invert(), new Vector3(-0.2, -2, -4));
        });
    });
}