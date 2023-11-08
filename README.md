
# ViewController lifecycle
<img width="1211" alt="image" src="https://github.com/siberianarg/lifecycle/assets/99109874/8ed89c8e-69aa-4d36-9908-8bea5b424e65">

1. init - установка свойств vc;
2. loadView - подмена стандартной view на кастомную;
3. viewDidLoad - view нашего VC создано, используется для заполнения UI;
4. viewWillAppear - VC начинает появлять на экране, используется для обновления UI данными, которые могли измениться, пока VC не отображался на экране;
5. viewWillLayoutSubviews - вызывается перед тем как view нашего ус, разместит свои subviews. Границы окончательно подсчитаны.
6. viewDidLayoutSubviews - уведомляет, что view нашего ис только что разместила свои subviews;
7. viewDidAppear - вызывается как только ис появился на экране;
8. viewWilDisappear - VC начинает удаляться с экрана;
9. viewDidDisappear - VC удален с экрана;
10. deinit - деинициализация v, удаление из памяти устройства;

# App lifecycle

<img width="605" alt="Screenshot 2023-11-08 at 12 09 14" src="https://github.com/siberianarg/lifecycle/assets/99109874/7ce6a6de-d335-4286-8646-abb15eec8454">

- sceneWillEnterForeground - вызывается, когда приложение начало передаваться обратно из фона на передний план, либо просто запускается, но оно еще не активно;
- sceneDidBecomeActive - вызывается, когда оно становится приложением переднего плана;
- sceneWillResignActive - вызывается, когда приложение уходит из режима переднего плана;
- sceneDidEnterBackground - вызывается, когда приложение перешло в фоновый режим и может быть выключено в любое время;
- sceneDidDisconnect - дает понять, что приложение было выключено. Note: не вызывается, если приложение было в состоянии приостановлено;
