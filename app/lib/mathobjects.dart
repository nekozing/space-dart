class Vector3 {
    static final num delta = 1e-15;
    final num x;
    final num y;
    final num z;

    Vector3(this.x, this.y, this.z);

    static zero() => new Vector3(0, 0, 0);

    operator == (Vector3 v) => (this.x - v.x).abs() < delta 
                            && (this.y - v.y).abs() < delta 
                            && (this.z - v.z).abs() < delta;
    operator +(Vector3 v) => new Vector3(this.x + v.x, this.y + v.y, this.z + v.z); 
    operator -(Vector3 v) => new Vector3(this.x - v.x, this.y - v.y, this.z - v.z);

    String toString() => "x: ${this.x} y: ${this.y} z: ${this.z}";
}