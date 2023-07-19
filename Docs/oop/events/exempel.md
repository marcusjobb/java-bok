---
title: Exempel
permalink: oop/events/exempel
nav_order: 2
parent: Events
grand_parent: Objektorienterad programmering (OOP)
author: Marcus Medina
date: 2022-11-20 02:59
layout: default
author_github: https://github.com/marcusjobb
author_url: https://marcusmedina.pro
codelanguage: C#
enhance: false
id: 8a0093ea-7628-4da9-a1c7-0cc6ccc60314
school: https://campus.molndal.se/yh
---

# Exempel
Vi ska skapa ett bankkonto där vi kan sätta in pengar och ta ut pengar. Ett bankkonto är en vanlig komponent i finansiella system och används för att hantera insättningar, uttag och saldo.
## Beskrivning

Vårt bankkonto kommer att ha flera events som informerar oss om olika händelser som inträffar på kontot. Dessa events inkluderar:
- Insättning: När pengar sätts in på kontot.
- Uttag: När pengar tas ut från kontot.
- Saldo mindre än 0: När saldot på kontot blir mindre än 0.
- Insättning med felaktig summa: När en insättning görs med en ogiltig summa (t.ex. 0 eller negativt belopp).
- Uttag med felaktig summa: När ett uttag görs med en ogiltig summa.
Vi kommer också att ha en särskild händelse för insättningar över en viss gräns, till exempel 15000 kr. Denna händelse kan användas för att varna för eventuell kriminell aktivitet.
För att implementera detta bankkonto använder vi Java och skapar en klass som heter "Account". Klassen har en variabel "balance" för att hålla reda på kontots saldo, samt olika events för att rapportera händelser till intresserade lyssnare.
Här är Java-koden som implementerar bankkontot:

```java
import java.util.ArrayList;
import java.util.List;
public class Account {
private int balance;
private List<DepositListener> depositListeners;
private List<WithdrawListener> withdrawListeners;
private List<BalanceBelowZeroListener> balanceBelowZeroListeners;
private List<DepositInvalidAmountListener> depositInvalidAmountListeners;
private List<WithdrawInvalidAmountListener> withdrawInvalidAmountListeners;
private List<DepositAboveLimitListener> depositAboveLimitListeners;
public Account() {
balance = 0;
depositListeners = new ArrayList<>();
withdrawListeners = new ArrayList<>();
balanceBelowZeroListeners = new ArrayList<>();
depositInvalidAmountListeners = new ArrayList<>();
withdrawInvalidAmountListeners = new ArrayList<>();
depositAboveLimitListeners = new ArrayList<>();
}
public void addDepositListener(DepositListener listener) {
depositListeners.add(listener);
public void addWithdrawListener(WithdrawListener listener) {
withdrawListeners.add(listener);
public void addBalanceBelowZeroListener(BalanceBelowZeroListener listener) {
balanceBelowZeroListeners.add(listener);
public void addDepositInvalidAmountListener(DepositInvalidAmountListener listener) {
depositInvalidAmountListeners.add(listener);
public void addWithdrawInvalidAmountListener(WithdrawInvalidAmountListener listener) {
withdrawInvalidAmountListeners.add(listener);
public void addDepositAboveLimitListener(DepositAboveLimitListener listener) {
depositAboveLimitListeners.add(listener);
public int getBalance() {
return balance;
public void deposit(int amount) {
if (amount <= 0) {
for (DepositInvalidAmountListener listener : depositInvalidAmountListeners) {
listener.onDepositInvalidAmount(amount);
}
return;
}
if (amount > 15000) {
for (DepositAboveLimitListener listener : depositAboveLimitListeners) {
listener.onDepositAboveLimit(amount);
balance += amount;
for (DepositListener listener : depositListeners) {
listener.onDeposit(amount);
public void withdraw(int amount) {
for (WithdrawInvalidAmountListener listener : withdrawInvalidAmountListeners) {
listener.onWithdrawInvalidAmount(amount);
if (balance - amount < 0) {
for (BalanceBelowZeroListener listener : balanceBelowZeroListeners) {
listener.onBalanceBelowZero(amount);
balance -= amount;
for (WithdrawListener listener : withdrawListeners) {
listener.onWithdraw(amount);
}
public interface DepositListener {
void onDeposit(int amount);
public interface WithdrawListener {
void onWithdraw(int amount);
public interface BalanceBelowZeroListener {
void onBalanceBelowZero(int amount);
public interface DepositInvalidAmountListener {
void onDepositInvalidAmount(int amount);
public interface WithdrawInvalidAmountListener {
void onWithdrawInvalidAmount(int amount);
public interface DepositAboveLimitListener {
void onDepositAboveLimit(int amount);

```
public class DepositEventArgs {
private int amount;
public DepositEventArgs(int amount) {
this.amount = amount;
public int getAmount() {
return amount;
public class WithdrawEventArgs {
public WithdrawEventArgs(int amount) {
public class BalanceBelowZeroEventArgs {
public BalanceBelowZeroEventArgs(int amount) {
public class DepositInvalidAmountEventArgs {
public DepositInvalidAmountEventArgs(int amount) {
public class WithdrawInvalidAmountEventArgs {
public WithdrawInvalidAmountEventArgs(int amount) {
public class DepositAboveLimitEventArgs {
public DepositAboveLimitEventArgs(int amount) {
Nu kan vi använda vår "Account"-klass för att skapa bankkonton och hantera händelserna som inträffar på dem.# Java
import java.util.EventListener;
if (amount > 0) {
balance += amount;
} else {
DepositInvalidAmountEventArgs args = new DepositInvalidAmountEventArgs(amount);
onDepositInvalidAmount(args);
if (amount > 0 && amount <= balance) {
balance -= amount;
WithdrawInvalidAmountEventArgs args = new WithdrawInvalidAmountEventArgs(amount);
onWithdrawInvalidAmount(args);
if (balance < 0) {
BalanceBelowZeroEventArgs args = new BalanceBelowZeroEventArgs(balance);
onBalanceBelowZero(args);
public event EventHandler<DepositEventArgs> Deposit;
protected virtual void OnDeposit(DepositEventArgs e)
{
Deposit?.Invoke(this, e);
public event EventHandler<WithdrawEventArgs> Withdraw;
protected virtual void OnWithdraw(WithdrawEventArgs e)
Withdraw?.Invoke(this, e);
public event EventHandler<BalanceBelowZeroEventArgs> BalanceBelowZero;
protected virtual void OnBalanceBelowZero(BalanceBelowZeroEventArgs e)
BalanceBelowZero?.Invoke(this, e);
public event EventHandler<DepositInvalidAmountEventArgs> DepositInvalidAmount;
protected virtual void OnDepositInvalidAmount(DepositInvalidAmountEventArgs e)
DepositInvalidAmount?.Invoke(this, e);
public event EventHandler<WithdrawInvalidAmountEventArgs> WithdrawInvalidAmount;
protected virtual void OnWithdrawInvalidAmount(WithdrawInvalidAmountEventArgs e)
WithdrawInvalidAmount?.Invoke(this, e);
public event EventHandler<DepositAboveLimitEventArgs> DepositAboveLimit;
protected virtual void OnDepositAboveLimit(DepositAboveLimitEventArgs e)
DepositAboveLimit?.Invoke(this, e);
public class DepositEventArgs extends EventArgs {
public class WithdrawEventArgs extends EventArgs {
public class BalanceBelowZeroEventArgs extends EventArgs {
public class DepositInvalidAmountEventArgs extends EventArgs {
public class WithdrawInvalidAmountEventArgs extends EventArgs {
public class DepositAboveLimitEventArgs extends EventArgs {
public class Program {
public static void main(String[] args) {
Account account = new Account();
account.addDepositListener(new DepositListener() {
@Override
public void onDeposit(DepositEventArgs e) {
System.out.println("Insättning: " + e.getAmount());
});
account.addWithdrawListener(new WithdrawListener() {
public void onWithdraw(WithdrawEventArgs e) {
System.out.println("Uttag: " + e.getAmount());
account.addBalanceBelowZeroListener(new BalanceBelowZeroListener() {
public void onBalanceBelowZero(BalanceBelowZeroEventArgs e) {
System.out.println("Saldo under noll: " + e.getAmount());
account.addDepositInvalidAmountListener(new DepositInvalidAmountListener() {
public void onDepositInvalidAmount(DepositInvalidAmountEventArgs e) {
System.out.println("Ogiltig insättningsbelopp: " + e.getAmount());
account.addWithdrawInvalidAmountListener(new WithdrawInvalidAmountListener() {
public void onWithdrawInvalidAmount(WithdrawInvalidAmountEventArgs e) {
System.out.println("Ogiltig uttagsbelopp: " + e.getAmount());
account.addDepositAboveLimitListener(new DepositAboveLimitListener() {
public void onDepositAboveLimit(DepositAboveLimitEventArgs e) {
System.out.println("Insättning över gränsen: " + e.getAmount());
account.deposit(1000);
account.withdraw(500);
account.withdraw(600);
account.deposit(-100);
public interface DepositListener extends EventListener {
void onDeposit(DepositEventArgs e);
public interface WithdrawListener extends EventListener {
void onWithdraw(WithdrawEventArgs e);
public interface BalanceBelowZeroListener extends EventListener {
void onBalanceBelowZero(BalanceBelowZeroEventArgs e);
public interface DepositInvalidAmountListener extends EventListener {
void onDepositInvalidAmount(DepositInvalidAmountEventArgs e);
public interface WithdrawInvalidAmountListener extends EventListener {
void onWithdrawInvalidAmount(WithdrawInvalidAmountEventArgs e);
public interface DepositAboveLimitListener extends EventListener {
void onDepositAboveLimit(DepositAboveLimitEventArgs e);

```I det här exemplet skapas en instans av klassen "Account" och olika händelselyssnare kopplas till dess events. Därefter utförs några operationer på kontot, som insättningar och uttag, vilket resulterar i att relevanta events triggas och meddelanden skrivs ut till konsolen.
Detta är bara en grundläggande implementation av ett bankkonto i Java. Beroende på användningsområdet kan det finnas ytterligare funktioner och logik som behöver läggas till.
public class Main {
public void onDepositAboveLimit(DepositAboveLimitEvent event) {
System.out.println("Insättning på " + event.getAmount() + " kr är över gränsen");
System.out.println("Ring SÄPO!");
public void onWithdrawInvalidAmount(WithdrawInvalidAmountEvent event) {
System.out.println("Uttag på " + event.getAmount() + " kr är inte tillåtet");
public void onDepositInvalidAmount(DepositInvalidAmountEvent event) {
System.out.println("Insättning på " + event.getAmount() + " kr är inte tillåtet");
public void onBalanceBelowZero(BalanceBelowZeroEvent event) {
System.out.println("Uttag på " + event.getAmount() + " kr är inte tillåtet då det skulle sätta saldo under 0");
public void onWithdraw(WithdrawEvent event) {
System.out.println("Uttag på " + event.getAmount() + " kr");
public void onDeposit(DepositEvent event) {
System.out.println("Insättning på " + event.getAmount() + " kr");
account.withdraw(-100);
account.deposit(20000);
void onDepositAboveLimit(DepositAboveLimitEvent event);
public class DepositAboveLimitEvent {
private double amount;
public DepositAboveLimitEvent(double amount) {
public double getAmount() {
void onWithdrawInvalidAmount(WithdrawInvalidAmountEvent event);
public class WithdrawInvalidAmountEvent {
public WithdrawInvalidAmountEvent(double amount) {
void onDepositInvalidAmount(DepositInvalidAmountEvent event);
public class DepositInvalidAmountEvent {
public DepositInvalidAmountEvent(double amount) {
void onBalanceBelowZero(BalanceBelowZeroEvent event);
public class BalanceBelowZeroEvent {
public BalanceBelowZeroEvent(double amount) {
void onWithdraw(WithdrawEvent event);
public class WithdrawEvent {
public WithdrawEvent(double amount) {
void onDeposit(DepositEvent event);
public class DepositEvent {
public DepositEvent(double amount) {
public void withdraw(double amount) {
if (amount < 0) {
System.out.println("Uttag på " + amount + " kr är inte tillåtet");
WithdrawEvent event = new WithdrawEvent(amount);
listener.onWithdraw(event);
if (amount > 10000) {
listener.onDepositAboveLimit(new DepositAboveLimitEvent(amount));
public void deposit(double amount) {
System.out.println("Insättning på " + amount + " kr är inte tillåtet");
DepositEvent event = new DepositEvent(amount);
listener.onDeposit(event);
public