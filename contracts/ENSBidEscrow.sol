pragma solidity ^0.4.11;

contract ENSBidEscrow {
  uint256 public fee;             // 手續費
  uint256 public ttl;             // default expire time

  // enum for Escrow status
  enum Status { Start, WaitingENS, WaitingETH, Finish, Cancel }

  struct Escrow {
    address buyer;
    address seller;
    uint256 price;
    bytes32 ens;
    uint256 ttl;
    Status status;
  }

  mapping (uint256 => Escrow) escrows;

  // STEP 1: 買賣雙方達成共識後，任何人都可以替該交易建立履約保證
  function startEscrow(address _buyer, address _seller, uint256 _price, bytes32 _ens) returns (uint256 _escrowId) {
    require(_price > 0);
    // 要確認 _seller 是否有該 _ens
  }

  // STEP 2/3: 買方將成交金額交給履約保證合約
  function fillPrice(uint256 _escrowId) payable { // onlyBuyer
    //require(msg.sender == escrow.buyer);
  }

  // STEP 2/3: 賣方將ENS透過ensRegiester.transfer轉移權限給履約保證合約，之後呼叫履約保證合約驗證ens轉移
  function fillEns(uint256 _escrowId) { // onlySeller
    //呼叫 ensRegister確認owner
  }

  // STEP 4: 透過STEP 2/3驅動，通知買賣雙方可以分別取得ens/eth，設定escrow status finish
  function transfer(uint256 _escrowId) internal {
    // 加上手續費
  }

  // 透過 escrowId 查詢 Escrow 資訊
  function viewEscrow(uint256 _escrowId) constant returns (Status) {

  }

  // 買賣雙方都可以呼叫取消
  function cancelEscrow(uint256 _escrowId) {

  }

  // 履約保證取消後，買加申請退款
  function returnToBuyer(uint256 _escrowId) payable {

  }

  // 履約保證取消後，賣家申請退回ens
  function returnToSeller(uint256 _escrowId) {

  }
}