.class public Lcom/pmpd/business/device/notify/NotificationService;
.super Landroid/service/notification/NotificationListenerService;
.source "NotificationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pmpd/business/device/notify/NotificationService$MissedCall;,
        Lcom/pmpd/business/device/notify/NotificationService$BroadcastReceiverMgr;
    }
.end annotation


# static fields
.field private static final ACTION_TIMEZONE_CHANGED:Ljava/lang/String; = "android.intent.action.TIMEZONE_CHANGED"

.field private static final INTERVAL:I = 0xbb8

.field private static final JPUSH_MESSAGE_ACTION:Ljava/lang/String; = "com.pmpd.push.PushMessageAction"

.field private static final PHONE_RECEIVER_PHONE:Ljava/lang/String; = "android.intent.action.PHONE_STATE"

.field private static final SMS_RECEIVER_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field private static final TAG:Ljava/lang/String; = "NotificationService"


# instance fields
.field private inComeNumber:Ljava/lang/String;

.field private isCall:Z

.field private mBroadcastReceiver:Lcom/pmpd/business/device/notify/NotificationService$BroadcastReceiverMgr;

.field private mDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field private mMissedCall:Lcom/pmpd/business/device/notify/NotificationService$MissedCall;

.field private mSendTime:J

.field private mSmartMediaPlay:Lcom/pmpd/business/device/notify/SmartMediaPlay;

.field private mTimer:Ljava/util/Timer;

.field private mUploadTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    const-wide/16 v0, 0x0

    .line 59
    iput-wide v0, p0, Lcom/pmpd/business/device/notify/NotificationService;->mSendTime:J

    .line 67
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/pmpd/business/device/notify/NotificationService;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method static synthetic access$000(Lcom/pmpd/business/device/notify/NotificationService;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/pmpd/business/device/notify/NotificationService;->createBleListener()V

    return-void
.end method

.method static synthetic access$100(Lcom/pmpd/business/device/notify/NotificationService;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/pmpd/business/device/notify/NotificationService;->setWatchTime()V

    return-void
.end method

.method static synthetic access$1000(Lcom/pmpd/business/device/notify/NotificationService;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/pmpd/business/device/notify/NotificationService;->answerCall()V

    return-void
.end method

.method static synthetic access$1100(Lcom/pmpd/business/device/notify/NotificationService;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/pmpd/business/device/notify/NotificationService;->endCall()V

    return-void
.end method

.method static synthetic access$1200(Lcom/pmpd/business/device/notify/NotificationService;)Lcom/pmpd/business/device/notify/SmartMediaPlay;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/pmpd/business/device/notify/NotificationService;->mSmartMediaPlay:Lcom/pmpd/business/device/notify/SmartMediaPlay;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/pmpd/business/device/notify/NotificationService;II)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/pmpd/business/device/notify/NotificationService;->judgmentTime(II)V

    return-void
.end method

.method static synthetic access$1400(Lcom/pmpd/business/device/notify/NotificationService;)Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/pmpd/business/device/notify/NotificationService;->inComeNumber:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/pmpd/business/device/notify/NotificationService;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/pmpd/business/device/notify/NotificationService;->setGpsSunRiseSunDown()V

    return-void
.end method

.method static synthetic access$300(Lcom/pmpd/business/device/notify/NotificationService;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/pmpd/business/device/notify/NotificationService;->getGpsLocal()V

    return-void
.end method

.method static synthetic access$400(Lcom/pmpd/business/device/notify/NotificationService;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/pmpd/business/device/notify/NotificationService;->getStepAims()V

    return-void
.end method

.method static synthetic access$500(Lcom/pmpd/business/device/notify/NotificationService;)Lio/reactivex/disposables/CompositeDisposable;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/pmpd/business/device/notify/NotificationService;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    return-object p0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 57
    sget-object v0, Lcom/pmpd/business/device/notify/NotificationService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/pmpd/business/device/notify/NotificationService;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/pmpd/business/device/notify/NotificationService;->doReceiverSms(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$800(Lcom/pmpd/business/device/notify/NotificationService;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/pmpd/business/device/notify/NotificationService;->getWatchTime()V

    return-void
.end method

.method static synthetic access$900(Lcom/pmpd/business/device/notify/NotificationService;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/pmpd/business/device/notify/NotificationService;->processCustomMessage(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method private answerCall()V
    .locals 1

    .line 627
    iget-boolean v0, p0, Lcom/pmpd/business/device/notify/NotificationService;->isCall:Z

    if-eqz v0, :cond_0

    .line 628
    invoke-virtual {p0}, Lcom/pmpd/business/device/notify/NotificationService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/pmpd/business/device/notify/PhoneHelper;->answerCall(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private createAlarmListener()V
    .locals 3

    .line 636
    invoke-static {}, Lcom/pmpd/core/KernelHelper;->getInstance()Lcom/pmpd/core/KernelHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pmpd/core/KernelHelper;->getBleProtocolComponentService()Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/pmpd/business/device/notify/NotificationService;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {}, Lcom/pmpd/core/KernelHelper;->getInstance()Lcom/pmpd/core/KernelHelper;

    move-result-object v1

    .line 640
    invoke-virtual {v1}, Lcom/pmpd/core/KernelHelper;->getBleProtocolComponentService()Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;

    move-result-object v1

    .line 641
    invoke-interface {v1}, Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;->setAlarmListener()Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/pmpd/business/device/notify/NotificationService$14;

    invoke-direct {v2, p0}, Lcom/pmpd/business/device/notify/NotificationService$14;-><init>(Lcom/pmpd/business/device/notify/NotificationService;)V

    .line 642
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeWith(Lio/reactivex/Observer;)Lio/reactivex/Observer;

    move-result-object v1

    check-cast v1, Lio/reactivex/disposables/Disposable;

    .line 639
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private createBleListener()V
    .locals 0

    .line 115
    invoke-direct {p0}, Lcom/pmpd/business/device/notify/NotificationService;->createAlarmListener()V

    .line 116
    invoke-direct {p0}, Lcom/pmpd/business/device/notify/NotificationService;->createSearchPhoneListener()V

    .line 117
    invoke-direct {p0}, Lcom/pmpd/business/device/notify/NotificationService;->createTimeGetListener()V

    .line 118
    invoke-direct {p0}, Lcom/pmpd/business/device/notify/NotificationService;->createTimeGet2Listener()V

    .line 119
    invoke-direct {p0}, Lcom/pmpd/business/device/notify/NotificationService;->createStateSynchronization()V

    .line 120
    invoke-direct {p0}, Lcom/pmpd/business/device/notify/NotificationService;->createMusicPlayPauseListener()V

    .line 121
    invoke-direct {p0}, Lcom/pmpd/business/device/notify/NotificationService;->createMusicUpDownListener()V

    .line 122
    invoke-direct {p0}, Lcom/pmpd/business/device/notify/NotificationService;->createMusicVolumeListener()V

    .line 123
    invoke-direct {p0}, Lcom/pmpd/business/device/notify/NotificationService;->createWeatherListener()V

    .line 124
    invoke-direct {p0}, Lcom/pmpd/business/device/notify/NotificationService;->createLocationCoordinateListener()V

    return-void
.end method

.method private createConnectListener()V
    .locals 2

    .line 313
    invoke-static {}, Lcom/pmpd/core/KernelHelper;->getInstance()Lcom/pmpd/core/KernelHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pmpd/core/KernelHelper;->getBleProtocolComponentService()Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 316
    :cond_0
    invoke-static {}, Lcom/pmpd/business/BusinessHelper;->getInstance()Lcom/pmpd/business/BusinessHelper;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Lcom/pmpd/business/BusinessHelper;->getDeviceBusinessComponentService()Lcom/pmpd/business/component/DeviceBusinessComponentService;

    move-result-object v0

    .line 318
    invoke-interface {v0}, Lcom/pmpd/business/component/DeviceBusinessComponentService;->addDeviceAuthStateListener()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pmpd/business/device/notify/NotificationService$12;

    invoke-direct {v1, p0}, Lcom/pmpd/business/device/notify/NotificationService$12;-><init>(Lcom/pmpd/business/device/notify/NotificationService;)V

    .line 319
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeWith(Lio/reactivex/Observer;)Lio/reactivex/Observer;

    return-void
.end method

.method private createLocationCoordinateListener()V
    .locals 3

    .line 241
    invoke-static {}, Lcom/pmpd/core/KernelHelper;->getInstance()Lcom/pmpd/core/KernelHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pmpd/core/KernelHelper;->getBleProtocolComponentService()Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/pmpd/business/device/notify/NotificationService;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {}, Lcom/pmpd/business/BusinessHelper;->getInstance()Lcom/pmpd/business/BusinessHelper;

    move-result-object v1

    .line 245
    invoke-virtual {v1}, Lcom/pmpd/business/BusinessHelper;->getDeviceBusinessComponentService()Lcom/pmpd/business/component/DeviceBusinessComponentService;

    move-result-object v1

    .line 246
    invoke-interface {v1}, Lcom/pmpd/business/component/DeviceBusinessComponentService;->createLocalCoordinatesListener()Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/pmpd/business/device/notify/NotificationService$10;

    invoke-direct {v2, p0}, Lcom/pmpd/business/device/notify/NotificationService$10;-><init>(Lcom/pmpd/business/device/notify/NotificationService;)V

    .line 247
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->flatMapSingle(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/pmpd/business/device/notify/NotificationService$9;

    invoke-direct {v2, p0}, Lcom/pmpd/business/device/notify/NotificationService$9;-><init>(Lcom/pmpd/business/device/notify/NotificationService;)V

    .line 254
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->flatMapSingle(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/pmpd/business/device/notify/NotificationService$8;

    invoke-direct {v2, p0}, Lcom/pmpd/business/device/notify/NotificationService$8;-><init>(Lcom/pmpd/business/device/notify/NotificationService;)V

    .line 263
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeWith(Lio/reactivex/Observer;)Lio/reactivex/Observer;

    move-result-object v1

    check-cast v1, Lio/reactivex/disposables/Disposable;

    .line 244
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private createMusicPlayPauseListener()V
    .locals 3

    .line 822
    invoke-static {}, Lcom/pmpd/core/KernelHelper;->getInstance()Lcom/pmpd/core/KernelHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pmpd/core/KernelHelper;->getBleProtocolComponentService()Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 825
    :cond_0
    iget-object v0, p0, Lcom/pmpd/business/device/notify/NotificationService;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {}, Lcom/pmpd/core/KernelHelper;->getInstance()Lcom/pmpd/core/KernelHelper;

    move-result-object v1

    .line 826
    invoke-virtual {v1}, Lcom/pmpd/core/KernelHelper;->getBleProtocolComponentService()Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;

    move-result-object v1

    .line 827
    invoke-interface {v1}, Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;->setMusicPlayPauseListener()Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/pmpd/business/device/notify/NotificationService$23;

    invoke-direct {v2, p0}, Lcom/pmpd/business/device/notify/NotificationService$23;-><init>(Lcom/pmpd/business/device/notify/NotificationService;)V

    .line 828
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeWith(Lio/reactivex/Observer;)Lio/reactivex/Observer;

    move-result-object v1

    check-cast v1, Lio/reactivex/disposables/Disposable;

    .line 825
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private createMusicUpDownListener()V
    .locals 3

    .line 850
    invoke-static {}, Lcom/pmpd/core/KernelHelper;->getInstance()Lcom/pmpd/core/KernelHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pmpd/core/KernelHelper;->getBleProtocolComponentService()Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 853
    :cond_0
    iget-object v0, p0, Lcom/pmpd/business/device/notify/NotificationService;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {}, Lcom/pmpd/core/KernelHelper;->getInstance()Lcom/pmpd/core/KernelHelper;

    move-result-object v1

    .line 854
    invoke-virtual {v1}, Lcom/pmpd/core/KernelHelper;->getBleProtocolComponentService()Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;

    move-result-object v1

    .line 855
    invoke-interface {v1}, Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;->setMusicUpDownListener()Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/pmpd/business/device/notify/NotificationService$24;

    invoke-direct {v2, p0}, Lcom/pmpd/business/device/notify/NotificationService$24;-><init>(Lcom/pmpd/business/device/notify/NotificationService;)V

    .line 856
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeWith(Lio/reactivex/Observer;)Lio/reactivex/Observer;

    move-result-object v1

    check-cast v1, Lio/reactivex/disposables/Disposable;

    .line 853
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private createMusicVolumeListener()V
    .locals 3

    .line 879
    invoke-static {}, Lcom/pmpd/core/KernelHelper;->getInstance()Lcom/pmpd/core/KernelHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pmpd/core/KernelHelper;->getBleProtocolComponentService()Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 882
    :cond_0
    iget-object v0, p0, Lcom/pmpd/business/device/notify/NotificationService;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {}, Lcom/pmpd/core/KernelHelper;->getInstance()Lcom/pmpd/core/KernelHelper;

    move-result-object v1

    .line 883
    invoke-virtual {v1}, Lcom/pmpd/core/KernelHelper;->getBleProtocolComponentService()Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;

    move-result-object v1

    .line 884
    invoke-interface {v1}, Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;->setMusicVolumeListener()Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/pmpd/business/device/notify/NotificationService$25;

    invoke-direct {v2, p0}, Lcom/pmpd/business/device/notify/NotificationService$25;-><init>(Lcom/pmpd/business/device/notify/NotificationService;)V

    .line 885
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeWith(Lio/reactivex/Observer;)Lio/reactivex/Observer;

    move-result-object v1

    check-cast v1, Lio/reactivex/disposables/Disposable;

    .line 882
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private createPhoneListener()V
    .locals 3

    .line 577
    invoke-static {}, Lcom/pmpd/core/KernelHelper;->getInstance()Lcom/pmpd/core/KernelHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pmpd/core/KernelHelper;->getBleProtocolComponentService()Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/pmpd/business/device/notify/NotificationService;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {}, Lcom/pmpd/core/KernelHelper;->getInstance()Lcom/pmpd/core/KernelHelper;

    move-result-object v1

    .line 581
    invoke-virtual {v1}, Lcom/pmpd/core/KernelHelper;->getBleProtocolComponentService()Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;

    move-result-object v1

    .line 582
    invoke-interface {v1}, Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;->setPhoneListener()Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/pmpd/business/device/notify/NotificationService$13;

    invoke-direct {v2, p0}, Lcom/pmpd/business/device/notify/NotificationService$13;-><init>(Lcom/pmpd/business/device/notify/NotificationService;)V

    .line 583
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeWith(Lio/reactivex/Observer;)Lio/reactivex/Observer;

    move-result-object v1

    check-cast v1, Lio/reactivex/disposables/Disposable;

    .line 580
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private createSearchPhoneListener()V
    .locals 3

    .line 665
    invoke-static {}, Lcom/pmpd/core/KernelHelper;->getInstance()Lcom/pmpd/core/KernelHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pmpd/core/KernelHelper;->getBleProtocolComponentService()Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/pmpd/business/device/notify/NotificationService;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {}, Lcom/pmpd/core/KernelHelper;->getInstance()Lcom/pmpd/core/KernelHelper;

    move-result-object v1

    .line 669
    invoke-virtual {v1}, Lcom/pmpd/core/KernelHelper;->getBleProtocolComponentService()Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;

    move-result-object v1

    .line 670
    invoke-interface {v1}, Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;->setSearchPhoneListener()Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/pmpd/business/device/notify/NotificationService$15;

    invoke-direct {v2, p0}, Lcom/pmpd/business/device/notify/NotificationService$15;-><init>(Lcom/pmpd/business/device/notify/NotificationService;)V

    .line 671
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeWith(Lio/reactivex/Observer;)Lio/reactivex/Observer;

    move-result-object v1

    check-cast v1, Lio/reactivex/disposables/Disposable;

    .line 668
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private createStateSynchronization()V
    .locals 3

    .line 907
    invoke-static {}, Lcom/pmpd/core/KernelHelper;->getInstance()Lcom/pmpd/core/KernelHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pmpd/core/KernelHelper;->getBleProtocolComponentService()Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 910
    :cond_0
    iget-object v0, p0, Lcom/pmpd/business/device/notify/NotificationService;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {}, Lcom/pmpd/core/KernelHelper;->getInstance()Lcom/pmpd/core/KernelHelper;

    move-result-object v1

    .line 911
    invoke-virtual {v1}, Lcom/pmpd/core/KernelHelper;->getBleProtocolComponentService()Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;

    move-result-object v1

    .line 912
    invoke-interface {v1}, Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;->createStateSynchronizationListener()Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/pmpd/business/device/notify/NotificationService$27;

    invoke-direct {v2, p0}, Lcom/pmpd/business/device/notify/NotificationService$27;-><init>(Lcom/pmpd/business/device/notify/NotificationService;)V

    .line 913
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->flatMapSingle(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/pmpd/business/device/notify/NotificationService$26;

    invoke-direct {v2, p0}, Lcom/pmpd/business/device/notify/NotificationService$26;-><init>(Lcom/pmpd/business/device/notify/NotificationService;)V

    .line 920
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeWith(Lio/reactivex/Observer;)Lio/reactivex/Observer;

    move-result-object v1

    check-cast v1, Lio/reactivex/disposables/Disposable;

    .line 910
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private createTimeGet2Listener()V
    .locals 3

    .line 730
    invoke-static {}, Lcom/pmpd/core/KernelHelper;->getInstance()Lcom/pmpd/core/KernelHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pmpd/core/KernelHelper;->getBleProtocolComponentService()Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/pmpd/business/device/notify/NotificationService;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {}, Lcom/pmpd/core/KernelHelper;->getInstance()Lcom/pmpd/core/KernelHelper;

    move-result-object v1

    .line 734
    invoke-virtual {v1}, Lcom/pmpd/core/KernelHelper;->getBleProtocolComponentService()Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;

    move-result-object v1

    .line 735
    invoke-interface {v1}, Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;->setOnTimeGet2Listener()Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/pmpd/business/device/notify/NotificationService$19;

    invoke-direct {v2, p0}, Lcom/pmpd/business/device/notify/NotificationService$19;-><init>(Lcom/pmpd/business/device/notify/NotificationService;)V

    .line 736
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->flatMapSingle(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/pmpd/business/device/notify/NotificationService$18;

    invoke-direct {v2, p0}, Lcom/pmpd/business/device/notify/NotificationService$18;-><init>(Lcom/pmpd/business/device/notify/NotificationService;)V

    .line 745
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeWith(Lio/reactivex/Observer;)Lio/reactivex/Observer;

    move-result-object v1

    check-cast v1, Lio/reactivex/disposables/Disposable;

    .line 733
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private createTimeGetListener()V
    .locals 3

    .line 695
    invoke-static {}, Lcom/pmpd/core/KernelHelper;->getInstance()Lcom/pmpd/core/KernelHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pmpd/core/KernelHelper;->getBleProtocolComponentService()Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/pmpd/business/device/notify/NotificationService;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {}, Lcom/pmpd/core/KernelHelper;->getInstance()Lcom/pmpd/core/KernelHelper;

    move-result-object v1

    .line 699
    invoke-virtual {v1}, Lcom/pmpd/core/KernelHelper;->getBleProtocolComponentService()Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;

    move-result-object v1

    .line 700
    invoke-interface {v1}, Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;->setTimeGetListener()Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/pmpd/business/device/notify/NotificationService$17;

    invoke-direct {v2, p0}, Lcom/pmpd/business/device/notify/NotificationService$17;-><init>(Lcom/pmpd/business/device/notify/NotificationService;)V

    .line 701
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->flatMapSingle(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/pmpd/business/device/notify/NotificationService$16;

    invoke-direct {v2, p0}, Lcom/pmpd/business/device/notify/NotificationService$16;-><init>(Lcom/pmpd/business/device/notify/NotificationService;)V

    .line 707
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeWith(Lio/reactivex/Observer;)Lio/reactivex/Observer;

    move-result-object v1

    check-cast v1, Lio/reactivex/disposables/Disposable;

    .line 698
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private createWeatherListener()V
    .locals 3

    .line 134
    invoke-static {}, Lcom/pmpd/core/KernelHelper;->getInstance()Lcom/pmpd/core/KernelHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pmpd/core/KernelHelper;->getBleProtocolComponentService()Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/pmpd/business/device/notify/NotificationService;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {}, Lcom/pmpd/business/BusinessHelper;->getInstance()Lcom/pmpd/business/BusinessHelper;

    move-result-object v1

    .line 138
    invoke-virtual {v1}, Lcom/pmpd/business/BusinessHelper;->getDeviceBusinessComponentService()Lcom/pmpd/business/component/DeviceBusinessComponentService;

    move-result-object v1

    .line 139
    invoke-interface {v1}, Lcom/pmpd/business/component/DeviceBusinessComponentService;->addWeatherListener()Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/pmpd/business/device/notify/NotificationService$4;

    invoke-direct {v2, p0}, Lcom/pmpd/business/device/notify/NotificationService$4;-><init>(Lcom/pmpd/business/device/notify/NotificationService;)V

    .line 140
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->flatMapSingle(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/pmpd/business/device/notify/NotificationService$3;

    invoke-direct {v2, p0}, Lcom/pmpd/business/device/notify/NotificationService$3;-><init>(Lcom/pmpd/business/device/notify/NotificationService;)V

    .line 148
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->flatMapSingle(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/pmpd/business/device/notify/NotificationService$2;

    invoke-direct {v2, p0}, Lcom/pmpd/business/device/notify/NotificationService$2;-><init>(Lcom/pmpd/business/device/notify/NotificationService;)V

    .line 158
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->flatMapSingle(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/pmpd/business/device/notify/NotificationService$1;

    invoke-direct {v2, p0}, Lcom/pmpd/business/device/notify/NotificationService$1;-><init>(Lcom/pmpd/business/device/notify/NotificationService;)V

    .line 172
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeWith(Lio/reactivex/Observer;)Lio/reactivex/Observer;

    move-result-object v1

    check-cast v1, Lio/reactivex/disposables/Disposable;

    .line 137
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private doNotify(Landroid/service/notification/StatusBarNotification;)V
    .locals 5

    const-string v0, ""

    .line 367
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 368
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.title"

    .line 370
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.text"

    .line 372
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 373
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wsy"

    .line 374
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wsy"

    .line 378
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pkg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    const-string v2, "android"

    .line 383
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    const-string v2, "org.telegram.messenger"

    .line 386
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    const/16 v3, 0x28

    if-eq v2, v3, :cond_3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_4

    :cond_3
    return-void

    :cond_4
    const-string v2, "com.microsoft.office.outlook"

    .line 389
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result p1

    const v2, 0x7f02077a

    if-ne p1, v2, :cond_5

    return-void

    :cond_5
    const-string p1, "com.microsoft.office.outlook"

    .line 392
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_6

    .line 393
    invoke-static {}, Lcom/pmpd/core/KernelHelper;->getInstance()Lcom/pmpd/core/KernelHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pmpd/core/KernelHelper;->getBleProtocolComponentService()Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;

    move-result-object p1

    sget-object v1, Lcom/pmpd/core/component/model/api/MessageType;->QQ:Lcom/pmpd/core/component/model/api/MessageType;

    invoke-interface {p1, v1}, Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;->notify2(Lcom/pmpd/core/component/model/api/MessageType;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lcom/pmpd/core/util/NoAnswerSingleObserver;

    invoke-direct {v1}, Lcom/pmpd/core/util/NoAnswerSingleObserver;-><init>()V

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/SingleObserver;)V

    .line 394
    sget-object p1, Lcom/pmpd/core/component/model/api/MessageType;->QQ:Lcom/pmpd/core/component/model/api/MessageType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/pmpd/business/device/R$string;->service_device_notify_app_qq:I

    invoke-virtual {p0, v3}, Lcom/pmpd/business/device/notify/NotificationService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/pmpd/business/device/notify/NotificationService;->setMessage(Lcom/pmpd/core/component/model/api/MessageType;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string p1, "org.telegram.messenger"

    .line 395
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 396
    invoke-static {}, Lcom/pmpd/core/KernelHelper;->getInstance()Lcom/pmpd/core/KernelHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pmpd/core/KernelHelper;->getBleProtocolComponentService()Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;

    move-result-object p1

    sget-object v1, Lcom/pmpd/core/component/model/api/MessageType;->WeChat:Lcom/pmpd/core/component/model/api/MessageType;

    invoke-interface {p1, v1}, Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;->notify2(Lcom/pmpd/core/component/model/api/MessageType;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lcom/pmpd/core/util/NoAnswerSingleObserver;

    invoke-direct {v1}, Lcom/pmpd/core/util/NoAnswerSingleObserver;-><init>()V

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/SingleObserver;)V

    .line 397
    sget-object p1, Lcom/pmpd/core/component/model/api/MessageType;->WeChat:Lcom/pmpd/core/component/model/api/MessageType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/pmpd/business/device/R$string;->service_device_notify_app_wechat:I

    invoke-virtual {p0, v3}, Lcom/pmpd/business/device/notify/NotificationService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/pmpd/business/device/notify/NotificationService;->setMessage(Lcom/pmpd/core/component/model/api/MessageType;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string p1, "com.skype.raider"

    .line 398
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 399
    invoke-static {}, Lcom/pmpd/core/KernelHelper;->getInstance()Lcom/pmpd/core/KernelHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pmpd/core/KernelHelper;->getBleProtocolComponentService()Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;

    move-result-object p1

    sget-object v1, Lcom/pmpd/core/component/model/api/MessageType;->Skype:Lcom/pmpd/core/component/model/api/MessageType;

    invoke-interface {p1, v1}, Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;->notify2(Lcom/pmpd/core/component/model/api/MessageType;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lcom/pmpd/core/util/NoAnswerSingleObserver;

    invoke-direct {v1}, Lcom/pmpd/core/util/NoAnswerSingleObserver;-><init>()V

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/SingleObserver;)V

    .line 400
    sget-object p1, Lcom/pmpd/core/component/model/api/MessageType;->Skype:Lcom/pmpd/core/component/model/api/MessageType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/pmpd/business/device/R$string;->service_device_notify_app_skype:I

    invoke-virtual {p0, v3}, Lcom/pmpd/business/device/notify/NotificationService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/pmpd/business/device/notify/NotificationService;->setMessage(Lcom/pmpd/core/component/model/api/MessageType;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string p1, "com.google.android.calendar"

    .line 401
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 402
    invoke-static {}, Lcom/pmpd/core/KernelHelper;->getInstance()Lcom/pmpd/core/KernelHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pmpd/core/KernelHelper;->getBleProtocolComponentService()Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;

    move-result-object p1

    sget-object v1, Lcom/pmpd/core/component/model/api/MessageType;->Weibo:Lcom/pmpd/core/component/model/api/MessageType;

    invoke-interface {p1, v1}, Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;->notify2(Lcom/pmpd/core/component/model/api/MessageType;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lcom/pmpd/core/util/NoAnswerSingleObserver;

    invoke-direct {v1}, Lcom/pmpd/core/util/NoAnswerSingleObserver;-><init>()V

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/SingleObserver;)V

    .line 403
    sget-object p1, Lcom/pmpd/core/component/model/api/MessageType;->Weibo:Lcom/pmpd/core/component/model/api/MessageType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/pmpd/business/device/R$string;->service_device_notify_app_weibo:I

    invoke-virtual {p0, v3}, Lcom/pmpd/business/device/notify/NotificationService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/pmpd/business/device/notify/NotificationService;->setMessage(Lcom/pmpd/core/component/model/api/MessageType;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string p1, "com.facebook.orca"

    .line 404
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 405
    invoke-static {}, Lcom/pmpd/core/KernelHelper;->getInstance()Lcom/pmpd/core/KernelHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pmpd/core/KernelHelper;->getBleProtocolComponentService()Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;

    move-result-object p1

    sget-object v1, Lcom/pmpd/core/component/model/api/MessageType;->Facebook:Lcom/pmpd/core/component/model/api/MessageType;

    invoke-interface {p1, v1}, Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;->notify2(Lcom/pmpd/core/component/model/api/MessageType;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lcom/pmpd/core/util/NoAnswerSingleObserver;

    invoke-direct {v1}, Lcom/pmpd/core/util/NoAnswerSingleObserver;-><init>()V

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/SingleObserver;)V

    .line 406
    sget-object p1, Lcom/pmpd/core/component/model/api/MessageType;->Facebook:Lcom/pmpd/core/component/model/api/MessageType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/pmpd/business/device/R$string;->service_device_notify_app_facebook:I

    invoke-virtual {p0, v3}, Lcom/pmpd/business/device/notify/NotificationService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/pmpd/business/device/notify/NotificationService;->setMessage(Lcom/pmpd/core/component/model/api/MessageType;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const-string p1, "com.twitter.android"

    .line 407
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 408
    invoke-static {}, Lcom/pmpd/core/KernelHelper;->getInstance()Lcom/pmpd/core/KernelHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pmpd/core/KernelHelper;->getBleProtocolComponentService()Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;

    move-result-object p1

    sget-object v1, Lcom/pmpd/core/component/model/api/MessageType;->Twitter:Lcom/pmpd/core/component/model/api/MessageType;

    invoke-interface {p1, v1}, Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;->notify2(Lcom/pmpd/core/component/model/api/MessageType;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lcom/pmpd/core/util/NoAnswerSingleObserver;

    invoke-direct {v1}, Lcom/pmpd/core/util/NoAnswerSingleObserver;-><init>()V

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/SingleObserver;)V

    .line 409
    sget-object p1, Lcom/pmpd/core/component/model/api/MessageType;->Twitter:Lcom/pmpd/core/component/model/api/MessageType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/pmpd/business/device/R$string;->service_device_notify_app_twitter:I

    invoke-virtual {p0, v3}, Lcom/pmpd/business/device/notify/NotificationService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/pmpd/business/device/notify/NotificationService;->setMessage(Lcom/pmpd/core/component/model/api/MessageType;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const-string p1, "com.whatsapp"

    .line 410
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 411
    invoke-static {}, Lcom/pmpd/core/KernelHelper;->getInstance()Lcom/pmpd/core/KernelHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pmpd/core/KernelHelper;->getBleProtocolComponentService()Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;

    move-result-object p1

    sget-object v1, Lcom/pmpd/core/component/model/api/MessageType;->Whatsapp:Lcom/pmpd/core/component/model/api/MessageType;

    invoke-interface {p1, v1}, Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;->notify2(Lcom/pmpd/core/component/model/api/MessageType;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lcom/pmpd/core/util/NoAnswerSingleObserver;

    invoke-direct {v1}, Lcom/pmpd/core/util/NoAnswerSingleObserver;-><init>()V

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/SingleObserver;)V

    .line 412
    sget-object p1, Lcom/pmpd/core/component/model/api/MessageType;->Whatsapp:Lcom/pmpd/core/component/model/api/MessageType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/pmpd/business/device/R$string;->service_device_notify_app_what_app:I

    invoke-virtual {p0, v3}, Lcom/pmpd/business/device/notify/NotificationService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/pmpd/business/device/notify/NotificationService;->setMessage(Lcom/pmpd/core/component/model/api/MessageType;Ljava/lang/String;)V

    goto :goto_0

    :cond_c
    const-string p1, "com.google.android.gm"

    .line 413
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 414
    invoke-static {}, Lcom/pmpd/core/KernelHelper;->getInstance()Lcom/pmpd/core/KernelHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pmpd/core/KernelHelper;->getBleProtocolComponentService()Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;

    move-result-object p1

    sget-object v1, Lcom/pmpd/core/component/model/api/MessageType;->Line:Lcom/pmpd/core/component/model/api/MessageType;

    invoke-interface {p1, v1}, Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;->notify2(Lcom/pmpd/core/component/model/api/MessageType;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lcom/pmpd/core/util/NoAnswerSingleObserver;

    invoke-direct {v1}, Lcom/pmpd/core/util/NoAnswerSingleObserver;-><init>()V

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/SingleObserver;)V

    .line 415
    sget-object p1, Lcom/pmpd/core/component/model/api/MessageType;->Line:Lcom/pmpd/core/component/model/api/MessageType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/pmpd/business/device/R$string;->service_device_notify_app_line:I

    invoke-virtual {p0, v3}, Lcom/pmpd/business/device/notify/NotificationService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/pmpd/business/device/notify/NotificationService;->setMessage(Lcom/pmpd/core/component/model/api/MessageType;Ljava/lang/String;)V

    goto :goto_0

    :cond_d
    const-string p1, "org.thunderdog.challegram"

    .line 416
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 417
    invoke-static {}, Lcom/pmpd/core/KernelHelper;->getInstance()Lcom/pmpd/core/KernelHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pmpd/core/KernelHelper;->getBleProtocolComponentService()Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;

    move-result-object p1

    sget-object v1, Lcom/pmpd/core/component/model/api/MessageType;->Tim:Lcom/pmpd/core/component/model/api/MessageType;

    invoke-interface {p1, v1}, Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;->notify2(Lcom/pmpd/core/component/model/api/MessageType;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lcom/pmpd/core/util/NoAnswerSingleObserver;

    invoke-direct {v1}, Lcom/pmpd/core/util/NoAnswerSingleObserver;-><init>()V

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/SingleObserver;)V

    .line 418
    sget-object p1, Lcom/pmpd/core/component/model/api/MessageType;->Tim:Lcom/pmpd/core/component/model/api/MessageType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/pmpd/business/device/R$string;->service_device_notify_app_tim:I

    invoke-virtual {p0, v3}, Lcom/pmpd/business/device/notify/NotificationService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/pmpd/business/device/notify/NotificationService;->setMessage(Lcom/pmpd/core/component/model/api/MessageType;Ljava/lang/String;)V

    :cond_e
    :goto_0
    return-void
.end method

.method private doReceiverSms(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 556
    invoke-static {p2}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object p1

    .line 557
    invoke-static {}, Lcom/pmpd/core/KernelHelper;->getInstance()Lcom/pmpd/core/KernelHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/pmpd/core/KernelHelper;->getBleProtocolComponentService()Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;

    move-result-object p2

    sget-object v0, Lcom/pmpd/core/component/model/api/MessageType;->Message:Lcom/pmpd/core/component/model/api/MessageType;

    invoke-interface {p2, v0}, Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;->notify2(Lcom/pmpd/core/component/model/api/MessageType;)Lio/reactivex/Single;

    move-result-object p2

    new-instance v0, Lcom/pmpd/core/util/NoAnswerSingleObserver;

    invoke-direct {v0}, Lcom/pmpd/core/util/NoAnswerSingleObserver;-><init>()V

    invoke-virtual {p2, v0}, Lio/reactivex/Single;->subscribe(Lio/reactivex/SingleObserver;)V

    .line 558
    array-length p2, p1

    if-lez p2, :cond_1

    const/4 p2, 0x0

    .line 559
    aget-object v0, p1, p2

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 562
    :try_start_0
    invoke-virtual {p0}, Lcom/pmpd/business/device/notify/NotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/pmpd/business/device/notify/ContactsHelper;->getNameByPhone(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 564
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    :goto_0
    if-nez v0, :cond_0

    .line 567
    aget-object v0, p1, p2

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    .line 569
    :cond_0
    sget-object v1, Lcom/pmpd/core/component/model/api/MessageType;->Message:Lcom/pmpd/core/component/model/api/MessageType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object p1, p1, p2

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/pmpd/business/device/notify/NotificationService;->setMessage(Lcom/pmpd/core/component/model/api/MessageType;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private endCall()V
    .locals 1

    .line 618
    iget-boolean v0, p0, Lcom/pmpd/business/device/notify/NotificationService;->isCall:Z

    if-eqz v0, :cond_0

    .line 619
    invoke-virtual {p0}, Lcom/pmpd/business/device/notify/NotificationService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/pmpd/business/device/notify/PhoneHelper;->endCall(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private getGpsLocal()V
    .locals 3

    .line 194
    invoke-static {}, Lcom/pmpd/business/BusinessHelper;->getInstance()Lcom/pmpd/business/BusinessHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pmpd/business/BusinessHelper;->getDeviceBusinessComponentService()Lcom/pmpd/business/component/DeviceBusinessComponentService;

    move-result-object v0

    invoke-interface {v0}, Lcom/pmpd/business/component/DeviceBusinessComponentService;->weatherSetting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/pmpd/business/device/notify/NotificationService;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {}, Lcom/pmpd/business/BusinessHelper;->getInstance()Lcom/pmpd/business/BusinessHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pmpd/business/BusinessHelper;->getDeviceBusinessComponentService()Lcom/pmpd/business/component/DeviceBusinessComponentService;

    move-result-object v1

    .line 196
    invoke-interface {v1, p0}, Lcom/pmpd/business/component/DeviceBusinessComponentService;->startGpsLocation(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lcom/pmpd/business/device/notify/NotificationService$7;

    invoke-direct {v2, p0}, Lcom/pmpd/business/device/notify/NotificationService$7;-><init>(Lcom/pmpd/business/device/notify/NotificationService;)V

    .line 197
    invoke-virtual {v1, v2}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lcom/pmpd/business/device/notify/NotificationService$6;

    invoke-direct {v2, p0}, Lcom/pmpd/business/device/notify/NotificationService$6;-><init>(Lcom/pmpd/business/device/notify/NotificationService;)V

    .line 207
    invoke-virtual {v1, v2}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lcom/pmpd/business/device/notify/NotificationService$5;

    invoke-direct {v2, p0}, Lcom/pmpd/business/device/notify/NotificationService$5;-><init>(Lcom/pmpd/business/device/notify/NotificationService;)V

    .line 222
    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribeWith(Lio/reactivex/SingleObserver;)Lio/reactivex/SingleObserver;

    move-result-object v1

    check-cast v1, Lio/reactivex/disposables/Disposable;

    .line 195
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    :cond_0
    return-void
.end method

.method private getStepAims()V
    .locals 3

    .line 288
    invoke-static {}, Lcom/pmpd/core/KernelHelper;->getInstance()Lcom/pmpd/core/KernelHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pmpd/core/KernelHelper;->getBleProtocolComponentService()Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 291
    :cond_0
    invoke-static {}, Lcom/pmpd/business/BusinessHelper;->getInstance()Lcom/pmpd/business/BusinessHelper;

    move-result-object v0

    .line 292
    invoke-virtual {v0}, Lcom/pmpd/business/BusinessHelper;->getLoginBusinessComponentService()Lcom/pmpd/business/component/LoginBusinessComponentService;

    move-result-object v0

    invoke-interface {v0}, Lcom/pmpd/business/component/LoginBusinessComponentService;->getUserStepGoal()I

    move-result v0

    .line 293
    iget-object v1, p0, Lcom/pmpd/business/device/notify/NotificationService;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {}, Lcom/pmpd/business/BusinessHelper;->getInstance()Lcom/pmpd/business/BusinessHelper;

    move-result-object v2

    .line 294
    invoke-virtual {v2}, Lcom/pmpd/business/BusinessHelper;->getDeviceBusinessComponentService()Lcom/pmpd/business/component/DeviceBusinessComponentService;

    move-result-object v2

    .line 295
    invoke-interface {v2, v0}, Lcom/pmpd/business/component/DeviceBusinessComponentService;->setSportAims(I)Lio/reactivex/Single;

    move-result-object v0

    new-instance v2, Lcom/pmpd/business/device/notify/NotificationService$11;

    invoke-direct {v2, p0}, Lcom/pmpd/business/device/notify/NotificationService$11;-><init>(Lcom/pmpd/business/device/notify/NotificationService;)V

    .line 296
    invoke-virtual {v0, v2}, Lio/reactivex/Single;->subscribeWith(Lio/reactivex/SingleObserver;)Lio/reactivex/SingleObserver;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 293
    invoke-virtual {v1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private getWatchTime()V
    .locals 5

    .line 955
    invoke-static {}, Lcom/pmpd/business/BusinessHelper;->getInstance()Lcom/pmpd/business/BusinessHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pmpd/business/BusinessHelper;->getDeviceBusinessComponentService()Lcom/pmpd/business/component/DeviceBusinessComponentService;

    move-result-object v0

    invoke-interface {v0}, Lcom/pmpd/business/component/DeviceBusinessComponentService;->isNewProtocol()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 956
    iget-object v0, p0, Lcom/pmpd/business/device/notify/NotificationService;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {}, Lcom/pmpd/business/BusinessHelper;->getInstance()Lcom/pmpd/business/BusinessHelper;

    move-result-object v1

    .line 957
    invoke-virtual {v1}, Lcom/pmpd/business/BusinessHelper;->getDeviceBusinessComponentService()Lcom/pmpd/business/component/DeviceBusinessComponentService;

    move-result-object v1

    .line 958
    invoke-interface {v1}, Lcom/pmpd/business/component/DeviceBusinessComponentService;->getWatchTime()Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lcom/pmpd/business/device/notify/NotificationService$28;

    invoke-direct {v2, p0}, Lcom/pmpd/business/device/notify/NotificationService$28;-><init>(Lcom/pmpd/business/device/notify/NotificationService;)V

    .line 959
    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribeWith(Lio/reactivex/SingleObserver;)Lio/reactivex/SingleObserver;

    move-result-object v1

    check-cast v1, Lio/reactivex/disposables/Disposable;

    .line 956
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    goto :goto_0

    .line 979
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTimezoneOffset()I

    move-result v0

    .line 980
    invoke-static {}, Lcom/pmpd/business/BusinessHelper;->getInstance()Lcom/pmpd/business/BusinessHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pmpd/business/BusinessHelper;->getDeviceBusinessComponentService()Lcom/pmpd/business/component/DeviceBusinessComponentService;

    move-result-object v1

    invoke-interface {v1}, Lcom/pmpd/business/component/DeviceBusinessComponentService;->getCurrentTimeZone()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 981
    iget-object v1, p0, Lcom/pmpd/business/device/notify/NotificationService;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {}, Lcom/pmpd/business/BusinessHelper;->getInstance()Lcom/pmpd/business/BusinessHelper;

    move-result-object v2

    .line 982
    invoke-virtual {v2}, Lcom/pmpd/business/BusinessHelper;->getDeviceBusinessComponentService()Lcom/pmpd/business/component/DeviceBusinessComponentService;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 983
    invoke-interface {v2, v3, v4}, Lcom/pmpd/business/component/DeviceBusinessComponentService;->setMcuTime(ILjava/util/Date;)Lio/reactivex/Single;

    move-result-object v2

    new-instance v3, Lcom/pmpd/business/device/notify/NotificationService$29;

    invoke-direct {v3, p0, v0}, Lcom/pmpd/business/device/notify/NotificationService$29;-><init>(Lcom/pmpd/business/device/notify/NotificationService;I)V

    .line 984
    invoke-virtual {v2, v3}, Lio/reactivex/Single;->subscribeWith(Lio/reactivex/SingleObserver;)Lio/reactivex/SingleObserver;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 981
    invoke-virtual {v1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private judgmentTime(II)V
    .locals 2

    .line 1006
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1007
    invoke-virtual {v0}, Ljava/util/Date;->getTimezoneOffset()I

    move-result v0

    div-int/lit8 v0, v0, 0x3c

    rsub-int/lit8 v0, v0, 0x0

    const/16 v1, 0x46

    if-eq v1, p1, :cond_0

    if-eq v0, p2, :cond_0

    .line 1009
    iget-object p1, p0, Lcom/pmpd/business/device/notify/NotificationService;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {}, Lcom/pmpd/business/BusinessHelper;->getInstance()Lcom/pmpd/business/BusinessHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/pmpd/business/BusinessHelper;->getDeviceBusinessComponentService()Lcom/pmpd/business/component/DeviceBusinessComponentService;

    move-result-object p2

    const/4 v0, 0x1

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 1010
    invoke-interface {p2, v0, v1}, Lcom/pmpd/business/component/DeviceBusinessComponentService;->setMcuTime(ILjava/util/Date;)Lio/reactivex/Single;

    move-result-object p2

    new-instance v0, Lcom/pmpd/business/device/notify/NotificationService$30;

    invoke-direct {v0, p0}, Lcom/pmpd/business/device/notify/NotificationService$30;-><init>(Lcom/pmpd/business/device/notify/NotificationService;)V

    .line 1011
    invoke-virtual {p2, v0}, Lio/reactivex/Single;->subscribeWith(Lio/reactivex/SingleObserver;)Lio/reactivex/SingleObserver;

    move-result-object p2

    check-cast p2, Lio/reactivex/disposables/Disposable;

    .line 1009
    invoke-virtual {p1, p2}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    :cond_0
    return-void
.end method

.method private processCustomMessage(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3

    const-string p1, "cn.jpush.android.MESSAGE"

    .line 470
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "cn.jpush.android.EXTRA"

    .line 471
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 472
    sget-object v0, Lcom/pmpd/business/device/notify/NotificationService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processCustomMessage: message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    sget-object p1, Lcom/pmpd/business/device/notify/NotificationService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processCustomMessage: extras:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "type"

    const-string v0, ""

    .line 476
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "WorldCup"

    .line 477
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 478
    invoke-static {}, Lcom/pmpd/business/BusinessHelper;->getInstance()Lcom/pmpd/business/BusinessHelper;

    move-result-object p1

    .line 479
    invoke-virtual {p1}, Lcom/pmpd/business/BusinessHelper;->getDeviceBusinessComponentService()Lcom/pmpd/business/component/DeviceBusinessComponentService;

    move-result-object p1

    const/4 p2, 0x2

    const/4 v0, 0x5

    .line 480
    invoke-interface {p1, v0, p2, v0, p2}, Lcom/pmpd/business/component/DeviceBusinessComponentService;->setSpecialEvent(IIII)Lio/reactivex/Single;

    move-result-object p1

    new-instance p2, Lcom/pmpd/core/util/NoAnswerSingleObserver;

    invoke-direct {p2}, Lcom/pmpd/core/util/NoAnswerSingleObserver;-><init>()V

    .line 481
    invoke-virtual {p1, p2}, Lio/reactivex/Single;->subscribeWith(Lio/reactivex/SingleObserver;)Lio/reactivex/SingleObserver;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private removePhoneListener()V
    .locals 1

    .line 609
    iget-object v0, p0, Lcom/pmpd/business/device/notify/NotificationService;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/pmpd/business/device/notify/NotificationService;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    :cond_0
    return-void
.end method

.method private setGpsSunRiseSunDown()V
    .locals 3

    .line 787
    invoke-static {}, Lcom/pmpd/business/BusinessHelper;->getInstance()Lcom/pmpd/business/BusinessHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pmpd/business/BusinessHelper;->getDeviceBusinessComponentService()Lcom/pmpd/business/component/DeviceBusinessComponentService;

    move-result-object v0

    invoke-interface {v0}, Lcom/pmpd/business/component/DeviceBusinessComponentService;->sunRiseSunDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/pmpd/business/device/notify/NotificationService;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {}, Lcom/pmpd/business/BusinessHelper;->getInstance()Lcom/pmpd/business/BusinessHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pmpd/business/BusinessHelper;->getDeviceBusinessComponentService()Lcom/pmpd/business/component/DeviceBusinessComponentService;

    move-result-object v1

    .line 789
    invoke-interface {v1, p0}, Lcom/pmpd/business/component/DeviceBusinessComponentService;->startGpsLocation(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lcom/pmpd/business/device/notify/NotificationService$22;

    invoke-direct {v2, p0}, Lcom/pmpd/business/device/notify/NotificationService$22;-><init>(Lcom/pmpd/business/device/notify/NotificationService;)V

    .line 790
    invoke-virtual {v1, v2}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lcom/pmpd/business/device/notify/NotificationService$21;

    invoke-direct {v2, p0}, Lcom/pmpd/business/device/notify/NotificationService$21;-><init>(Lcom/pmpd/business/device/notify/NotificationService;)V

    .line 799
    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribeWith(Lio/reactivex/SingleObserver;)Lio/reactivex/SingleObserver;

    move-result-object v1

    check-cast v1, Lio/reactivex/disposables/Disposable;

    .line 788
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    :cond_0
    return-void
.end method

.method private setMessage(Lcom/pmpd/core/component/model/api/MessageType;Ljava/lang/String;)V
    .locals 1

    .line 945
    invoke-static {}, Lcom/pmpd/core/KernelHelper;->getInstance()Lcom/pmpd/core/KernelHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pmpd/core/KernelHelper;->getBleProtocolComponentService()Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/pmpd/business/device/notify/NotificationService;->stripAccents(Ljava/lang/String;)Ljava/lang/String;

   move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;->setMessageDetail2(Lcom/pmpd/core/component/model/api/MessageType;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    new-instance p2, Lcom/pmpd/core/util/NoAnswerSingleObserver;

    invoke-direct {p2}, Lcom/pmpd/core/util/NoAnswerSingleObserver;-><init>()V

    .line 946
    invoke-virtual {p1, p2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/SingleObserver;)V

    return-void
.end method

.method private stripAccents(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    sget-object v0, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {p1, v0}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "[\\p{InCombiningDiacriticalMarks}]"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


.method private setWatchTime()V
    .locals 3

    .line 765
    invoke-static {}, Lcom/pmpd/business/BusinessHelper;->getInstance()Lcom/pmpd/business/BusinessHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pmpd/business/BusinessHelper;->getDeviceBusinessComponentService()Lcom/pmpd/business/component/DeviceBusinessComponentService;

    move-result-object v0

    invoke-interface {v0}, Lcom/pmpd/business/component/DeviceBusinessComponentService;->pointerNumber()I

    move-result v0

    if-nez v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/pmpd/business/device/notify/NotificationService;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {}, Lcom/pmpd/business/BusinessHelper;->getInstance()Lcom/pmpd/business/BusinessHelper;

    move-result-object v1

    .line 767
    invoke-virtual {v1}, Lcom/pmpd/business/BusinessHelper;->getDeviceBusinessComponentService()Lcom/pmpd/business/component/DeviceBusinessComponentService;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 768
    invoke-interface {v1, v2}, Lcom/pmpd/business/component/DeviceBusinessComponentService;->setWatchTime(Ljava/util/Date;)Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lcom/pmpd/business/device/notify/NotificationService$20;

    invoke-direct {v2, p0}, Lcom/pmpd/business/device/notify/NotificationService$20;-><init>(Lcom/pmpd/business/device/notify/NotificationService;)V

    .line 769
    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribeWith(Lio/reactivex/SingleObserver;)Lio/reactivex/SingleObserver;

    move-result-object v1

    check-cast v1, Lio/reactivex/disposables/Disposable;

    .line 766
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public doReceivePhone(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "incoming_number"

    .line 496
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 497
    iput-object p2, p0, Lcom/pmpd/business/device/notify/NotificationService;->inComeNumber:Ljava/lang/String;

    const-string v0, "phone"

    .line 498
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 499
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 536
    :pswitch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call = CALL_STATE_OFFHOOK -----"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/pmpd/core/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 537
    iput-boolean v0, p0, Lcom/pmpd/business/device/notify/NotificationService;->isCall:Z

    .line 538
    invoke-direct {p0}, Lcom/pmpd/business/device/notify/NotificationService;->removePhoneListener()V

    .line 539
    invoke-static {}, Lcom/pmpd/core/KernelHelper;->getInstance()Lcom/pmpd/core/KernelHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pmpd/core/KernelHelper;->getBleProtocolComponentService()Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 540
    invoke-static {}, Lcom/pmpd/core/KernelHelper;->getInstance()Lcom/pmpd/core/KernelHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pmpd/core/KernelHelper;->getBleProtocolComponentService()Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;

    move-result-object p1

    sget-object p2, Lcom/pmpd/core/component/model/api/MessageType;->Call:Lcom/pmpd/core/component/model/api/MessageType;

    invoke-interface {p1, p2}, Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;->cancelNotify2(Lcom/pmpd/core/component/model/api/MessageType;)Lio/reactivex/Single;

    move-result-object p1

    new-instance p2, Lcom/pmpd/core/util/NoAnswerSingleObserver;

    invoke-direct {p2}, Lcom/pmpd/core/util/NoAnswerSingleObserver;-><init>()V

    .line 541
    invoke-virtual {p1, p2}, Lio/reactivex/Single;->subscribeWith(Lio/reactivex/SingleObserver;)Lio/reactivex/SingleObserver;

    goto/16 :goto_1

    .line 502
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call = CALL_STATE_RINGING ---- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/pmpd/core/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 503
    iput-boolean p1, p0, Lcom/pmpd/business/device/notify/NotificationService;->isCall:Z

    .line 504
    invoke-direct {p0}, Lcom/pmpd/business/device/notify/NotificationService;->createPhoneListener()V

    .line 505
    invoke-static {}, Lcom/pmpd/core/KernelHelper;->getInstance()Lcom/pmpd/core/KernelHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pmpd/core/KernelHelper;->getBleProtocolComponentService()Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 506
    invoke-static {}, Lcom/pmpd/core/KernelHelper;->getInstance()Lcom/pmpd/core/KernelHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pmpd/core/KernelHelper;->getBleProtocolComponentService()Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;

    move-result-object p1

    sget-object v1, Lcom/pmpd/core/component/model/api/MessageType;->Call:Lcom/pmpd/core/component/model/api/MessageType;

    invoke-interface {p1, v1}, Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;->notify2(Lcom/pmpd/core/component/model/api/MessageType;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lcom/pmpd/core/util/NoAnswerSingleObserver;

    invoke-direct {v1}, Lcom/pmpd/core/util/NoAnswerSingleObserver;-><init>()V

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/SingleObserver;)V

    :cond_0
    const/4 p1, 0x0

    .line 510
    :try_start_0
    invoke-virtual {p0}, Lcom/pmpd/business/device/notify/NotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/pmpd/business/device/notify/ContactsHelper;->getNameByPhone(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 512
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 514
    :goto_0
    sget v1, Lcom/pmpd/business/device/R$string;->unknown:I

    invoke-virtual {p0, v1}, Lcom/pmpd/business/device/notify/NotificationService;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_2

    .line 516
    new-instance p1, Lcn/kbyte/utils/phone/PhoneNumberGeo;

    invoke-direct {p1}, Lcn/kbyte/utils/phone/PhoneNumberGeo;-><init>()V

    .line 517
    invoke-virtual {p1, p2}, Lcn/kbyte/utils/phone/PhoneNumberGeo;->lookup(Ljava/lang/String;)Lcn/kbyte/utils/phone/PhoneNumberInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcn/kbyte/utils/phone/PhoneNumberInfo;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/kbyte/utils/phone/PhoneNumberInfo;->getProvince()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 521
    :cond_1
    sget-object p1, Lcom/pmpd/core/component/model/api/MessageType;->Call:Lcom/pmpd/core/component/model/api/MessageType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget p2, Lcom/pmpd/business/device/R$string;->service_incoming_phone:I

    invoke-virtual {p0, p2}, Lcom/pmpd/business/device/notify/NotificationService;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/pmpd/business/device/notify/NotificationService;->setMessage(Lcom/pmpd/core/component/model/api/MessageType;Ljava/lang/String;)V

    goto :goto_1

    .line 523
    :cond_2
    sget-object p2, Lcom/pmpd/core/component/model/api/MessageType;->Call:Lcom/pmpd/core/component/model/api/MessageType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget p1, Lcom/pmpd/business/device/R$string;->service_incoming_phone:I

    invoke-virtual {p0, p1}, Lcom/pmpd/business/device/notify/NotificationService;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/pmpd/business/device/notify/NotificationService;->setMessage(Lcom/pmpd/core/component/model/api/MessageType;Ljava/lang/String;)V

    goto :goto_1

    .line 527
    :pswitch_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call = CALL_STATE_IDLE ----- "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/pmpd/core/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 528
    iput-boolean v0, p0, Lcom/pmpd/business/device/notify/NotificationService;->isCall:Z

    .line 529
    invoke-direct {p0}, Lcom/pmpd/business/device/notify/NotificationService;->removePhoneListener()V

    .line 530
    invoke-static {}, Lcom/pmpd/core/KernelHelper;->getInstance()Lcom/pmpd/core/KernelHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pmpd/core/KernelHelper;->getBleProtocolComponentService()Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 531
    invoke-static {}, Lcom/pmpd/core/KernelHelper;->getInstance()Lcom/pmpd/core/KernelHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pmpd/core/KernelHelper;->getBleProtocolComponentService()Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;

    move-result-object p1

    sget-object p2, Lcom/pmpd/core/component/model/api/MessageType;->Call:Lcom/pmpd/core/component/model/api/MessageType;

    invoke-interface {p1, p2}, Lcom/pmpd/core/component/protocol/ble/BleProtocolComponentService;->cancelNotify2(Lcom/pmpd/core/component/model/api/MessageType;)Lio/reactivex/Single;

    move-result-object p1

    new-instance p2, Lcom/pmpd/core/util/NoAnswerSingleObserver;

    invoke-direct {p2}, Lcom/pmpd/core/util/NoAnswerSingleObserver;-><init>()V

    .line 532
    invoke-virtual {p1, p2}, Lio/reactivex/Single;->subscribeWith(Lio/reactivex/SingleObserver;)Lio/reactivex/SingleObserver;

    :cond_3
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()V
    .locals 4

    .line 93
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onCreate()V

    .line 94
    new-instance v0, Lcom/pmpd/business/device/notify/NotificationService$BroadcastReceiverMgr;

    invoke-direct {v0, p0}, Lcom/pmpd/business/device/notify/NotificationService$BroadcastReceiverMgr;-><init>(Lcom/pmpd/business/device/notify/NotificationService;)V

    iput-object v0, p0, Lcom/pmpd/business/device/notify/NotificationService;->mBroadcastReceiver:Lcom/pmpd/business/device/notify/NotificationService$BroadcastReceiverMgr;

    .line 95
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 96
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PHONE_STATE"

    .line 97
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    .line 98
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.pmpd.push.PushMessageAction"

    .line 99
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/pmpd/business/device/notify/NotificationService;->mBroadcastReceiver:Lcom/pmpd/business/device/notify/NotificationService$BroadcastReceiverMgr;

    invoke-virtual {p0, v1, v0}, Lcom/pmpd/business/device/notify/NotificationService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    new-instance v0, Lcom/pmpd/business/device/notify/NotificationService$MissedCall;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Lcom/pmpd/business/device/notify/NotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/pmpd/business/device/notify/NotificationService$MissedCall;-><init>(Lcom/pmpd/business/device/notify/NotificationService;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pmpd/business/device/notify/NotificationService;->mMissedCall:Lcom/pmpd/business/device/notify/NotificationService$MissedCall;

    .line 104
    new-instance v0, Lcom/pmpd/business/device/notify/SmartMediaPlay;

    invoke-virtual {p0}, Lcom/pmpd/business/device/notify/NotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pmpd/business/device/notify/SmartMediaPlay;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pmpd/business/device/notify/NotificationService;->mSmartMediaPlay:Lcom/pmpd/business/device/notify/SmartMediaPlay;

    .line 105
    invoke-direct {p0}, Lcom/pmpd/business/device/notify/NotificationService;->createConnectListener()V

    .line 108
    invoke-virtual {p0}, Lcom/pmpd/business/device/notify/NotificationService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CALL_LOG"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/pmpd/business/device/notify/NotificationService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/pmpd/business/device/notify/NotificationService;->mMissedCall:Lcom/pmpd/business/device/notify/NotificationService$MissedCall;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 351
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onDestroy()V

    .line 352
    iget-object v0, p0, Lcom/pmpd/business/device/notify/NotificationService;->mBroadcastReceiver:Lcom/pmpd/business/device/notify/NotificationService$BroadcastReceiverMgr;

    invoke-virtual {p0, v0}, Lcom/pmpd/business/device/notify/NotificationService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 353
    invoke-virtual {p0}, Lcom/pmpd/business/device/notify/NotificationService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/pmpd/business/device/notify/NotificationService;->mMissedCall:Lcom/pmpd/business/device/notify/NotificationService$MissedCall;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 354
    invoke-static {}, Lcom/pmpd/business/BusinessHelper;->getInstance()Lcom/pmpd/business/BusinessHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pmpd/business/BusinessHelper;->getDeviceBusinessComponentService()Lcom/pmpd/business/component/DeviceBusinessComponentService;

    move-result-object v0

    invoke-interface {v0}, Lcom/pmpd/business/component/DeviceBusinessComponentService;->stopGpsLocation()V

    .line 355
    iget-object v0, p0, Lcom/pmpd/business/device/notify/NotificationService;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/pmpd/business/device/notify/NotificationService;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/pmpd/business/device/notify/NotificationService;->mUploadTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/pmpd/business/device/notify/NotificationService;->mUploadTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_1
    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 6

    .line 77
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V

    .line 78
    sget-object v0, Lcom/pmpd/business/device/notify/NotificationService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotificationPosted --- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pmpd/core/util/LogUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/pmpd/business/device/notify/NotificationService;->mSendTime:J

    sub-long v4, v0, v2

    const-wide/16 v0, 0xbb8

    cmp-long v2, v4, v0

    if-lez v2, :cond_0

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pmpd/business/device/notify/NotificationService;->mSendTime:J

    .line 81
    invoke-direct {p0, p1}, Lcom/pmpd/business/device/notify/NotificationService;->doNotify(Landroid/service/notification/StatusBarNotification;)V

    :cond_0
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 3

    .line 87
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V

    .line 88
    sget-object v0, Lcom/pmpd/business/device/notify/NotificationService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotificationRemoved --- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/pmpd/core/util/LogUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
