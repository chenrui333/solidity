contract D {}

contract C {
    address transient a;
    function f() public returns (uint) {
        D d = new D();
        a = address(d);
        return a.balance;
    }
}
// ====
// EVMVersion: >=cancun
// compileViaYul: false
// ----
// f() -> 0
