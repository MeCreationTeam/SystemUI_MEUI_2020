.class public Lcom/android/systemui/statusbar/StatusBarPolicy;
.super Ljava/lang/Object;
.source "StatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/StatusBarPolicy$StatusBarHandler;
    }
.end annotation


# static fields
.field public static final TRUSTED_LIST_URI:Landroid/net/Uri;

.field private static final doov2_SignalImages:[[I

.field private static final doov2_SignalImages_3g:[[I

.field private static final doov2_SignalImages_r:[[I

.field private static final doov_SignalImages:[[I

.field private static final doov_SignalImages_3g:[[I

.field private static final doov_SignalImages_r:[[I

.field private static final lenovo_sSignalImages:[[I

.field private static final lenovo_sSignalImages_3g:[[I

.field private static final lenovo_sSignalImages_r:[[I

.field private static final sDataNetType_1x:[[I

.field private static final sDataNetType_3g:[[I

.field private static final sDataNetType_e:[[I

.field private static final sDataNetType_g:[[I

.field private static final sDataNetType_h:[[I

.field private static final sRoamingIndicatorImages_cdma:[I

.field private static final sSignalImages:[[I

.field private static final sSignalImages_3g:[[I

.field private static final sSignalImages_4g:[[I

.field private static final sSignalImages_e:[[I

.field private static final sSignalImages_g:[[I

.field private static final sSignalImages_h:[[I

.field private static final sSignalImages_r:[[I

.field private static final sSignalImages_t:[[I

.field private static final sWifiSignalImages:[[I

.field private static final sWimaxSignalImages:[[I


# instance fields
.field private alwaysAutoConnect:Z

.field handler:Landroid/os/Handler;

.field private isConnected:Z

.field isTick:Ljava/lang/Boolean;

.field private lenovo_signal_range_max:[I

.field private lenovo_signal_range_min:[I

.field private mAlreadyShowOverVol:Z

.field private mAlwaysUseCdmaRssi:Z

.field private mBatteryFirst:Z

.field private mBatteryLevel:I

.field private mBatteryLevelTextView:Landroid/widget/TextView;

.field private mBatteryOverVoltageListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mBatteryPlugged:Z

.field private mBatteryShowLowOnEndCall:Z

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBatteryView:Landroid/view/View;

.field private mBatteryViewSequence:I

.field private mBluetoothA2dpConnected:Z

.field private mBluetoothEnabled:Z

.field private mBluetoothHeadsetState:I

.field private mBluetoothPbapState:I

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field mDataActivity:I

.field private mDataIconList:[I

.field private mDataIconVisible:Z

.field mDataState:[I

.field private final mHandler:Landroid/os/Handler;

.field private mHspaDataDistinguishable:Z

.field private mIndex:I

.field private mInetCondition:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsWifiConnected:Z

.field private mIsWimaxEnabled:Z

.field private mLastWifiSignalLevel:I

.field private mLowBatteryDialog:Landroid/app/AlertDialog;

.field private mLowBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mOverVolDialog:Landroid/app/AlertDialog;

.field private mPhone:Landroid/telephony/TelephonyManager;

.field private mPhoneSignalIconId:[I

.field mPhoneState:I

.field private mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private mSSIDs:[Ljava/lang/String;

.field private final mService:Landroid/app/StatusBarManager;

.field mServiceState:[Landroid/telephony/ServiceState;

.field mSignalIcon:[Ljava/lang/String;

.field mSignalStrength:[Landroid/telephony/SignalStrength;

.field mSimState:[Lcom/android/internal/telephony/IccCard$State;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mVolumeVisible:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWimaxExtraState:I

.field private mWimaxSignal:I

.field private mWimaxState:I

.field private numPhones:I

.field runable:Ljava/lang/Runnable;

.field public signal_oldLevel:I

.field public signal_oldLevel_td21:I

.field public signal_oldValue:I

.field public signal_oldValue_td21:I

.field private signal_range_max:[I

.field private signal_range_max_td21:[I

.field private signal_range_min:[I

.field private signal_range_min_td21:[I

.field private weakSignalDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x6

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v4, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v2

    new-array v1, v6, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sSignalImages:[[I

    new-array v0, v4, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v2

    new-array v1, v6, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sSignalImages_r:[[I

    new-array v0, v4, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v2

    new-array v1, v6, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sSignalImages_3g:[[I

    new-array v0, v4, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v2

    new-array v1, v5, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->doov_SignalImages:[[I

    new-array v0, v4, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v2

    new-array v1, v5, [I

    fill-array-data v1, :array_9

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->doov_SignalImages_r:[[I

    new-array v0, v4, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v2

    new-array v1, v5, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->doov_SignalImages_3g:[[I

    new-array v0, v4, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_c

    aput-object v1, v0, v2

    new-array v1, v5, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->doov2_SignalImages:[[I

    new-array v0, v4, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_e

    aput-object v1, v0, v2

    new-array v1, v5, [I

    fill-array-data v1, :array_f

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->doov2_SignalImages_r:[[I

    new-array v0, v4, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_10

    aput-object v1, v0, v2

    new-array v1, v5, [I

    fill-array-data v1, :array_11

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->doov2_SignalImages_3g:[[I

    new-array v0, v4, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_12

    aput-object v1, v0, v2

    new-array v1, v5, [I

    fill-array-data v1, :array_13

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->lenovo_sSignalImages:[[I

    new-array v0, v4, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_14

    aput-object v1, v0, v2

    new-array v1, v5, [I

    fill-array-data v1, :array_15

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->lenovo_sSignalImages_r:[[I

    new-array v0, v4, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_16

    aput-object v1, v0, v2

    new-array v1, v5, [I

    fill-array-data v1, :array_17

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->lenovo_sSignalImages_3g:[[I

    new-array v0, v4, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_18

    aput-object v1, v0, v2

    new-array v1, v6, [I

    fill-array-data v1, :array_19

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sSignalImages_g:[[I

    new-array v0, v4, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_1a

    aput-object v1, v0, v2

    new-array v1, v6, [I

    fill-array-data v1, :array_1b

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sSignalImages_e:[[I

    new-array v0, v4, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_1c

    aput-object v1, v0, v2

    new-array v1, v6, [I

    fill-array-data v1, :array_1d

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sSignalImages_h:[[I

    new-array v0, v4, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_1e

    aput-object v1, v0, v2

    new-array v1, v6, [I

    fill-array-data v1, :array_1f

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sSignalImages_t:[[I

    new-array v0, v4, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_20

    aput-object v1, v0, v2

    new-array v1, v6, [I

    fill-array-data v1, :array_21

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sSignalImages_4g:[[I

    const/16 v0, 0xf0

    new-array v0, v0, [I

    fill-array-data v0, :array_22

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sRoamingIndicatorImages_cdma:[I

    new-array v0, v4, [[I

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_23

    aput-object v1, v0, v2

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_24

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sDataNetType_g:[[I

    new-array v0, v4, [[I

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_25

    aput-object v1, v0, v2

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_26

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sDataNetType_3g:[[I

    new-array v0, v4, [[I

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_27

    aput-object v1, v0, v2

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_28

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sDataNetType_e:[[I

    new-array v0, v4, [[I

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_29

    aput-object v1, v0, v2

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_2a

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sDataNetType_h:[[I

    new-array v0, v4, [[I

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_2b

    aput-object v1, v0, v2

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_2c

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sDataNetType_1x:[[I

    new-array v0, v4, [[I

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_2d

    aput-object v1, v0, v2

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_2e

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sWifiSignalImages:[[I

    new-array v0, v4, [[I

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_2f

    aput-object v1, v0, v2

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_30

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sWimaxSignalImages:[[I

    const-string v0, "content://settings/trusted_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->TRUSTED_LIST_URI:Landroid/net/Uri;

    return-void

    nop

    :array_0
    .array-data 0x4
        0xe3t 0x0t 0x2t 0x7ft
        0xe5t 0x0t 0x2t 0x7ft
        0xe7t 0x0t 0x2t 0x7ft
        0xe9t 0x0t 0x2t 0x7ft
        0xebt 0x0t 0x2t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0xe4t 0x0t 0x2t 0x7ft
        0xe6t 0x0t 0x2t 0x7ft
        0xe8t 0x0t 0x2t 0x7ft
        0xeat 0x0t 0x2t 0x7ft
        0xect 0x0t 0x2t 0x7ft
    .end array-data

    :array_2
    .array-data 0x4
        0xcct 0x0t 0x2t 0x7ft
        0xcet 0x0t 0x2t 0x7ft
        0xd0t 0x0t 0x2t 0x7ft
        0xd2t 0x0t 0x2t 0x7ft
        0xd4t 0x0t 0x2t 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0xcdt 0x0t 0x2t 0x7ft
        0xcft 0x0t 0x2t 0x7ft
        0xd1t 0x0t 0x2t 0x7ft
        0xd3t 0x0t 0x2t 0x7ft
        0xd5t 0x0t 0x2t 0x7ft
    .end array-data

    :array_4
    .array-data 0x4
        0x5ct 0x0t 0x2t 0x7ft
        0x5et 0x0t 0x2t 0x7ft
        0x60t 0x0t 0x2t 0x7ft
        0x62t 0x0t 0x2t 0x7ft
        0x64t 0x0t 0x2t 0x7ft
    .end array-data

    :array_5
    .array-data 0x4
        0x5dt 0x0t 0x2t 0x7ft
        0x5ft 0x0t 0x2t 0x7ft
        0x61t 0x0t 0x2t 0x7ft
        0x63t 0x0t 0x2t 0x7ft
        0x65t 0x0t 0x2t 0x7ft
    .end array-data

    :array_6
    .array-data 0x4
        0x47t 0x0t 0x2t 0x7ft
        0x49t 0x0t 0x2t 0x7ft
        0x4bt 0x0t 0x2t 0x7ft
        0x4dt 0x0t 0x2t 0x7ft
        0x4ft 0x0t 0x2t 0x7ft
        0x51t 0x0t 0x2t 0x7ft
    .end array-data

    :array_7
    .array-data 0x4
        0x48t 0x0t 0x2t 0x7ft
        0x4at 0x0t 0x2t 0x7ft
        0x4ct 0x0t 0x2t 0x7ft
        0x4et 0x0t 0x2t 0x7ft
        0x50t 0x0t 0x2t 0x7ft
        0x52t 0x0t 0x2t 0x7ft
    .end array-data

    :array_8
    .array-data 0x4
        0x3bt 0x0t 0x2t 0x7ft
        0x3dt 0x0t 0x2t 0x7ft
        0x3ft 0x0t 0x2t 0x7ft
        0x41t 0x0t 0x2t 0x7ft
        0x43t 0x0t 0x2t 0x7ft
        0x45t 0x0t 0x2t 0x7ft
    .end array-data

    :array_9
    .array-data 0x4
        0x3ct 0x0t 0x2t 0x7ft
        0x3et 0x0t 0x2t 0x7ft
        0x40t 0x0t 0x2t 0x7ft
        0x42t 0x0t 0x2t 0x7ft
        0x44t 0x0t 0x2t 0x7ft
        0x46t 0x0t 0x2t 0x7ft
    .end array-data

    :array_a
    .array-data 0x4
        0x2ft 0x0t 0x2t 0x7ft
        0x31t 0x0t 0x2t 0x7ft
        0x33t 0x0t 0x2t 0x7ft
        0x35t 0x0t 0x2t 0x7ft
        0x37t 0x0t 0x2t 0x7ft
        0x39t 0x0t 0x2t 0x7ft
    .end array-data

    :array_b
    .array-data 0x4
        0x30t 0x0t 0x2t 0x7ft
        0x32t 0x0t 0x2t 0x7ft
        0x34t 0x0t 0x2t 0x7ft
        0x36t 0x0t 0x2t 0x7ft
        0x38t 0x0t 0x2t 0x7ft
        0x3at 0x0t 0x2t 0x7ft
    .end array-data

    :array_c
    .array-data 0x4
        0x22t 0x0t 0x2t 0x7ft
        0x24t 0x0t 0x2t 0x7ft
        0x26t 0x0t 0x2t 0x7ft
        0x28t 0x0t 0x2t 0x7ft
        0x2at 0x0t 0x2t 0x7ft
        0x2ct 0x0t 0x2t 0x7ft
    .end array-data

    :array_d
    .array-data 0x4
        0x23t 0x0t 0x2t 0x7ft
        0x25t 0x0t 0x2t 0x7ft
        0x27t 0x0t 0x2t 0x7ft
        0x29t 0x0t 0x2t 0x7ft
        0x2bt 0x0t 0x2t 0x7ft
        0x2dt 0x0t 0x2t 0x7ft
    .end array-data

    :array_e
    .array-data 0x4
        0x16t 0x0t 0x2t 0x7ft
        0x18t 0x0t 0x2t 0x7ft
        0x1at 0x0t 0x2t 0x7ft
        0x1ct 0x0t 0x2t 0x7ft
        0x1et 0x0t 0x2t 0x7ft
        0x20t 0x0t 0x2t 0x7ft
    .end array-data

    :array_f
    .array-data 0x4
        0x17t 0x0t 0x2t 0x7ft
        0x19t 0x0t 0x2t 0x7ft
        0x1bt 0x0t 0x2t 0x7ft
        0x1dt 0x0t 0x2t 0x7ft
        0x1ft 0x0t 0x2t 0x7ft
        0x21t 0x0t 0x2t 0x7ft
    .end array-data

    :array_10
    .array-data 0x4
        0xat 0x0t 0x2t 0x7ft
        0xct 0x0t 0x2t 0x7ft
        0xet 0x0t 0x2t 0x7ft
        0x10t 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
        0x14t 0x0t 0x2t 0x7ft
    .end array-data

    :array_11
    .array-data 0x4
        0xbt 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
        0xft 0x0t 0x2t 0x7ft
        0x11t 0x0t 0x2t 0x7ft
        0x13t 0x0t 0x2t 0x7ft
        0x15t 0x0t 0x2t 0x7ft
    .end array-data

    :array_12
    .array-data 0x4
        0xe3t 0x0t 0x2t 0x7ft
        0xe5t 0x0t 0x2t 0x7ft
        0xe7t 0x0t 0x2t 0x7ft
        0xe9t 0x0t 0x2t 0x7ft
        0xebt 0x0t 0x2t 0x7ft
        0xedt 0x0t 0x2t 0x7ft
    .end array-data

    :array_13
    .array-data 0x4
        0xe4t 0x0t 0x2t 0x7ft
        0xe6t 0x0t 0x2t 0x7ft
        0xe8t 0x0t 0x2t 0x7ft
        0xeat 0x0t 0x2t 0x7ft
        0xect 0x0t 0x2t 0x7ft
        0xeet 0x0t 0x2t 0x7ft
    .end array-data

    :array_14
    .array-data 0x4
        0xcct 0x0t 0x2t 0x7ft
        0xcet 0x0t 0x2t 0x7ft
        0xd0t 0x0t 0x2t 0x7ft
        0xd2t 0x0t 0x2t 0x7ft
        0xd4t 0x0t 0x2t 0x7ft
        0xd6t 0x0t 0x2t 0x7ft
    .end array-data

    :array_15
    .array-data 0x4
        0xcdt 0x0t 0x2t 0x7ft
        0xcft 0x0t 0x2t 0x7ft
        0xd1t 0x0t 0x2t 0x7ft
        0xd3t 0x0t 0x2t 0x7ft
        0xd5t 0x0t 0x2t 0x7ft
        0xd7t 0x0t 0x2t 0x7ft
    .end array-data

    :array_16
    .array-data 0x4
        0x5ct 0x0t 0x2t 0x7ft
        0x5et 0x0t 0x2t 0x7ft
        0x60t 0x0t 0x2t 0x7ft
        0x62t 0x0t 0x2t 0x7ft
        0x64t 0x0t 0x2t 0x7ft
        0x66t 0x0t 0x2t 0x7ft
    .end array-data

    :array_17
    .array-data 0x4
        0x5dt 0x0t 0x2t 0x7ft
        0x5ft 0x0t 0x2t 0x7ft
        0x61t 0x0t 0x2t 0x7ft
        0x63t 0x0t 0x2t 0x7ft
        0x65t 0x0t 0x2t 0x7ft
        0x67t 0x0t 0x2t 0x7ft
    .end array-data

    :array_18
    .array-data 0x4
        0xb4t 0x0t 0x2t 0x7ft
        0xb5t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb7t 0x0t 0x2t 0x7ft
        0xb8t 0x0t 0x2t 0x7ft
    .end array-data

    :array_19
    .array-data 0x4
        0xe4t 0x0t 0x2t 0x7ft
        0xe6t 0x0t 0x2t 0x7ft
        0xe8t 0x0t 0x2t 0x7ft
        0xeat 0x0t 0x2t 0x7ft
        0xect 0x0t 0x2t 0x7ft
    .end array-data

    :array_1a
    .array-data 0x4
        0xaft 0x0t 0x2t 0x7ft
        0xb0t 0x0t 0x2t 0x7ft
        0xb1t 0x0t 0x2t 0x7ft
        0xb2t 0x0t 0x2t 0x7ft
        0xb3t 0x0t 0x2t 0x7ft
    .end array-data

    :array_1b
    .array-data 0x4
        0xe4t 0x0t 0x2t 0x7ft
        0xe6t 0x0t 0x2t 0x7ft
        0xe8t 0x0t 0x2t 0x7ft
        0xeat 0x0t 0x2t 0x7ft
        0xect 0x0t 0x2t 0x7ft
    .end array-data

    :array_1c
    .array-data 0x4
        0xbbt 0x0t 0x2t 0x7ft
        0xbct 0x0t 0x2t 0x7ft
        0xbdt 0x0t 0x2t 0x7ft
        0xbet 0x0t 0x2t 0x7ft
        0xbft 0x0t 0x2t 0x7ft
    .end array-data

    :array_1d
    .array-data 0x4
        0x5dt 0x0t 0x2t 0x7ft
        0x5ft 0x0t 0x2t 0x7ft
        0x61t 0x0t 0x2t 0x7ft
        0x63t 0x0t 0x2t 0x7ft
        0x65t 0x0t 0x2t 0x7ft
    .end array-data

    :array_1e
    .array-data 0x4
        0xf1t 0x0t 0x2t 0x7ft
        0xf2t 0x0t 0x2t 0x7ft
        0xf3t 0x0t 0x2t 0x7ft
        0xf4t 0x0t 0x2t 0x7ft
        0xf5t 0x0t 0x2t 0x7ft
    .end array-data

    :array_1f
    .array-data 0x4
        0x5dt 0x0t 0x2t 0x7ft
        0x5ft 0x0t 0x2t 0x7ft
        0x61t 0x0t 0x2t 0x7ft
        0x63t 0x0t 0x2t 0x7ft
        0x65t 0x0t 0x2t 0x7ft
    .end array-data

    :array_20
    .array-data 0x4
        0x68t 0x0t 0x2t 0x7ft
        0x69t 0x0t 0x2t 0x7ft
        0x6at 0x0t 0x2t 0x7ft
        0x6bt 0x0t 0x2t 0x7ft
        0x6ct 0x0t 0x2t 0x7ft
    .end array-data

    :array_21
    .array-data 0x4
        0xe4t 0x0t 0x2t 0x7ft
        0xe6t 0x0t 0x2t 0x7ft
        0xe8t 0x0t 0x2t 0x7ft
        0xeat 0x0t 0x2t 0x7ft
        0xect 0x0t 0x2t 0x7ft
    .end array-data

    :array_22
    .array-data 0x4
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
    .end array-data

    :array_23
    .array-data 0x4
        0x78t 0x0t 0x2t 0x7ft
        0x96t 0x0t 0x2t 0x7ft
        0xa3t 0x0t 0x2t 0x7ft
        0x9dt 0x0t 0x2t 0x7ft
    .end array-data

    :array_24
    .array-data 0x4
        0x7et 0x0t 0x2t 0x7ft
        0x84t 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x8at 0x0t 0x2t 0x7ft
    .end array-data

    :array_25
    .array-data 0x4
        0x75t 0x0t 0x2t 0x7ft
        0x93t 0x0t 0x2t 0x7ft
        0xa0t 0x0t 0x2t 0x7ft
        0x9at 0x0t 0x2t 0x7ft
    .end array-data

    :array_26
    .array-data 0x4
        0x7bt 0x0t 0x2t 0x7ft
        0x81t 0x0t 0x2t 0x7ft
        0x8dt 0x0t 0x2t 0x7ft
        0x87t 0x0t 0x2t 0x7ft
    .end array-data

    :array_27
    .array-data 0x4
        0x77t 0x0t 0x2t 0x7ft
        0x95t 0x0t 0x2t 0x7ft
        0xa2t 0x0t 0x2t 0x7ft
        0x9ct 0x0t 0x2t 0x7ft
    .end array-data

    :array_28
    .array-data 0x4
        0x7dt 0x0t 0x2t 0x7ft
        0x83t 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x89t 0x0t 0x2t 0x7ft
    .end array-data

    :array_29
    .array-data 0x4
        0x79t 0x0t 0x2t 0x7ft
        0x97t 0x0t 0x2t 0x7ft
        0xa4t 0x0t 0x2t 0x7ft
        0x9et 0x0t 0x2t 0x7ft
    .end array-data

    :array_2a
    .array-data 0x4
        0x7ft 0x0t 0x2t 0x7ft
        0x85t 0x0t 0x2t 0x7ft
        0x91t 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
    .end array-data

    :array_2b
    .array-data 0x4
        0x74t 0x0t 0x2t 0x7ft
        0x92t 0x0t 0x2t 0x7ft
        0x9ft 0x0t 0x2t 0x7ft
        0x99t 0x0t 0x2t 0x7ft
    .end array-data

    :array_2c
    .array-data 0x4
        0x7at 0x0t 0x2t 0x7ft
        0x80t 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x86t 0x0t 0x2t 0x7ft
    .end array-data

    :array_2d
    .array-data 0x4
        0xf8t 0x0t 0x2t 0x7ft
        0xfat 0x0t 0x2t 0x7ft
        0xfct 0x0t 0x2t 0x7ft
        0xfet 0x0t 0x2t 0x7ft
    .end array-data

    :array_2e
    .array-data 0x4
        0xf9t 0x0t 0x2t 0x7ft
        0xfbt 0x0t 0x2t 0x7ft
        0xfdt 0x0t 0x2t 0x7ft
        0xfft 0x0t 0x2t 0x7ft
    .end array-data

    :array_2f
    .array-data 0x4
        0xa5t 0x0t 0x2t 0x7ft
        0xa7t 0x0t 0x2t 0x7ft
        0xa9t 0x0t 0x2t 0x7ft
        0xabt 0x0t 0x2t 0x7ft
    .end array-data

    :array_30
    .array-data 0x4
        0xa6t 0x0t 0x2t 0x7ft
        0xa8t 0x0t 0x2t 0x7ft
        0xaat 0x0t 0x2t 0x7ft
        0xact 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x5

    const/4 v2, 0x1

    const/4 v1, 0x6

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/StatusBarPolicy$StatusBarHandler;

    invoke-direct {v0, p0, v6}, Lcom/android/systemui/statusbar/StatusBarPolicy$StatusBarHandler;-><init>(Lcom/android/systemui/statusbar/StatusBarPolicy;Lcom/android/systemui/statusbar/StatusBarPolicy$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mHandler:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryFirst:Z

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    iput v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->signal_oldValue:I

    iput v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->signal_oldLevel:I

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->signal_range_min:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->signal_range_max:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->lenovo_signal_range_min:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->lenovo_signal_range_max:[I

    iput v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->signal_oldValue_td21:I

    iput v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->signal_oldLevel_td21:I

    new-array v0, v5, [I

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->signal_range_min_td21:[I

    new-array v0, v5, [I

    fill-array-data v0, :array_5

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->signal_range_max_td21:[I

    sget-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sDataNetType_g:[[I

    aget-object v0, v0, v4

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconList:[I

    iput v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhoneState:I

    iput v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataActivity:I

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "phone_signal"

    aput-object v1, v0, v4

    const-string v1, "phone_signal_second_sub"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSignalIcon:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mLastWifiSignalLevel:I

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mIsWifiConnected:Z

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mIsWimaxEnabled:Z

    iput v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mWimaxSignal:I

    iput v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mWimaxState:I

    iput v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mWimaxExtraState:I

    iput v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mInetCondition:I

    iput v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mIndex:I

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->alwaysAutoConnect:Z

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->isConnected:Z

    iput-object v6, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->weakSignalDialog:Landroid/app/AlertDialog;

    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->numPhones:I

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mAlreadyShowOverVol:Z

    new-instance v0, Lcom/android/systemui/statusbar/StatusBarPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarPolicy$1;-><init>(Lcom/android/systemui/statusbar/StatusBarPolicy;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->handler:Landroid/os/Handler;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->isTick:Ljava/lang/Boolean;

    new-instance v0, Lcom/android/systemui/statusbar/StatusBarPolicy$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarPolicy$3;-><init>(Lcom/android/systemui/statusbar/StatusBarPolicy;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->runable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/statusbar/StatusBarPolicy$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarPolicy$4;-><init>(Lcom/android/systemui/statusbar/StatusBarPolicy;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mLowBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

    new-instance v0, Lcom/android/systemui/statusbar/StatusBarPolicy$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarPolicy$10;-><init>(Lcom/android/systemui/statusbar/StatusBarPolicy;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryOverVoltageListener:Landroid/content/DialogInterface$OnDismissListener;

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v0, "statusbar"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const-string v0, "storage"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mStorageManager:Landroid/os/storage/StorageManager;

    new-instance v1, Lcom/android/systemui/usb/StorageNotification;

    invoke-direct {v1, p1}, Lcom/android/systemui/usb/StorageNotification;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "battery"

    const v2, 0x10802f7

    invoke-virtual {v0, v1, v2, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->numPhones:I

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->numPhones:I

    new-array v0, v0, [Landroid/telephony/SignalStrength;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSignalStrength:[Landroid/telephony/SignalStrength;

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->numPhones:I

    new-array v0, v0, [Landroid/telephony/ServiceState;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mServiceState:[Landroid/telephony/ServiceState;

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->numPhones:I

    new-array v0, v0, [Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSimState:[Lcom/android/internal/telephony/IccCard$State;

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->numPhones:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhoneSignalIconId:[I

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->numPhones:I

    new-array v0, v0, [Landroid/telephony/PhoneStateListener;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->numPhones:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataState:[I

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10d001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mAlwaysUseCdmaRssi:Z

    const-string v0, "StatusBarPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numPhones: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->numPhones:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->numPhones:I

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSignalStrength:[Landroid/telephony/SignalStrength;

    new-instance v2, Landroid/telephony/SignalStrength;

    invoke-direct {v2}, Landroid/telephony/SignalStrength;-><init>()V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSimState:[Lcom/android/internal/telephony/IccCard$State;

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhoneSignalIconId:[I

    const v2, 0x7f0200f0

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSignalIcon:[Ljava/lang/String;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhoneSignalIconId:[I

    aget v3, v3, v1

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataState:[I

    aput v4, v0, v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-static {v2, v1}, Lcom/android/internal/telephony/PhoneFactory;->getServiceName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v1

    const/16 v3, 0x1e1

    invoke-virtual {v0, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "data_connection"

    const v2, 0x7f020078

    invoke-virtual {v0, v1, v2, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "data_connection"

    invoke-virtual {v0, v1, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "headset"

    const v2, 0x1080083

    invoke-virtual {v0, v1, v2, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "headset"

    invoke-virtual {v0, v1, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wifi"

    sget-object v2, Lcom/android/systemui/statusbar/StatusBarPolicy;->sWifiSignalImages:[[I

    aget-object v2, v2, v4

    aget v2, v2, v4

    invoke-virtual {v0, v1, v2, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wifi"

    invoke-virtual {v0, v1, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10d001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    const v2, 0x7f0200ad

    invoke-virtual {v0, v1, v2, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    invoke-virtual {v0, v1, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "tty"

    const v2, 0x7f0200f6

    invoke-virtual {v0, v1, v2, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "tty"

    invoke-virtual {v0, v1, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "cdma_eri"

    const v2, 0x7f0200df

    invoke-virtual {v0, v1, v2, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "cdma_eri"

    invoke-virtual {v0, v1, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "bluetooth"

    const v2, 0x7f020072

    invoke-virtual {v0, v1, v2, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBluetoothEnabled:Z

    :goto_1
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBluetoothA2dpConnected:Z

    iput v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBluetoothHeadsetState:I

    iput v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBluetoothPbapState:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "bluetooth"

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBluetoothEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gps"

    const v2, 0x7f0200ba

    invoke-virtual {v0, v1, v2, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "alarm_clock"

    const v2, 0x7f02005a

    invoke-virtual {v0, v1, v2, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "alarm_clock"

    invoke-virtual {v0, v1, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "sync_active"

    const v2, 0x10802d6

    invoke-virtual {v0, v1, v2, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "sync_failing"

    const v2, 0x10802d7

    invoke-virtual {v0, v1, v2, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "sync_active"

    invoke-virtual {v0, v1, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "sync_failing"

    invoke-virtual {v0, v1, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "volume"

    const v2, 0x7f0200dd

    invoke-virtual {v0, v1, v2, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "volume"

    invoke-virtual {v0, v1, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateVolume()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ALARM_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SYNC_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.pbap.intent.action.PBAP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_STATE_ERROR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "interruptforfaraway"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wimax.WIMAX_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wimax.WIMAX_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mHspaDataDistinguishable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :cond_2
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBluetoothEnabled:Z

    goto/16 :goto_1

    :catch_0
    move-exception v0

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mHspaDataDistinguishable:Z

    goto :goto_2

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private HQ_wifiLoadingError()V
    .locals 3

    const-string v0, "StatusBarPolicy"

    const-string v1, "HQ_wifiLoadingError"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f08002f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f080030

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateBattery(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/StatusBarPolicy;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateVolume()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateSimState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateTTY(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/StatusBarPolicy;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateHeadSet(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateConnectivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateWiMAX(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/StatusBarPolicy;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/StatusBarPolicy;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->showDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/StatusBarPolicy;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->beforeShowDisconnDialog(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/StatusBarPolicy;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->showWifiDisconnDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateAlarm(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/StatusBarPolicy;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->numPhones:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/StatusBarPolicy;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateSignalStrength(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/StatusBarPolicy;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/StatusBarPolicy;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->requireUpdateDataIcon(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/StatusBarPolicy;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateCallState(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/StatusBarPolicy;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateDataNetType(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/systemui/statusbar/StatusBarPolicy;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mIndex:I

    return v0
.end method

.method static synthetic access$2702(Lcom/android/systemui/statusbar/StatusBarPolicy;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mIndex:I

    return p1
.end method

.method static synthetic access$2800(Lcom/android/systemui/statusbar/StatusBarPolicy;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->enableSelectedNework(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/systemui/statusbar/StatusBarPolicy;)Landroid/net/ConnectivityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateSyncState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/systemui/statusbar/StatusBarPolicy;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryViewSequence:I

    return v0
.end method

.method static synthetic access$3100(Lcom/android/systemui/statusbar/StatusBarPolicy;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->closeLastBatteryView()V

    return-void
.end method

.method static synthetic access$3202(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mOverVolDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$3302(Lcom/android/systemui/statusbar/StatusBarPolicy;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mAlreadyShowOverVol:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->onBatteryLow(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->onBatteryOkay(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateBluetooth(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateWifi(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/StatusBarPolicy;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->HQ_wifiLoadingError()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateGps(Landroid/content/Intent;)V

    return-void
.end method

.method private addPriority(Ljava/lang/String;I)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "ssid"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "priority"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/StatusBarPolicy;->TRUSTED_LIST_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p1, p2}, Landroid/net/wifi/WifiManager;->setTrustListPriority(Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private autoConnectOtherTrustAp(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->getListData()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSSIDs:[Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->filterNoRssiAps([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v3, :cond_3

    const-string v3, ""

    :goto_1
    aget-object v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v0, v5}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    goto :goto_0

    :cond_3
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/systemui/statusbar/StatusBarPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private beforeShowDisconnDialog(Ljava/lang/String;)Z
    .locals 8

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v3, "status=?"

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->getListData()I

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSSIDs:[Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->filterNoRssiAps([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "status=?"

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "192"

    aput-object v5, v4, v6

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v7

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    :goto_2
    if-eqz v0, :cond_1

    move v0, v7

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "status=?"

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "194"

    aput-object v5, v4, v6

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v7

    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    :goto_4
    if-eqz v0, :cond_2

    move v0, v7

    goto :goto_0

    :cond_2
    move v0, v6

    goto :goto_0

    :cond_3
    move v1, v6

    goto :goto_3

    :cond_4
    move v0, v6

    goto :goto_4

    :cond_5
    move v1, v6

    goto :goto_1

    :cond_6
    move v0, v6

    goto :goto_2
.end method

.method private closeLastBatteryView()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method private deletePriority(Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/StatusBarPolicy;->TRUSTED_LIST_URI:Landroid/net/Uri;

    const-string v2, "ssid=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private dismissBatteryOverVolDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mOverVolDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mOverVolDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private enableSelectedNework(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string v2, ""

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->reconnectAP()Z

    :cond_1
    return-void

    :cond_2
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/systemui/statusbar/StatusBarPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private filterNoRssiAps([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 13

    if-nez p2, :cond_1

    const/4 v11, 0x0

    move-object v6, v11

    :goto_0
    iget-object v11, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_2

    :cond_0
    const/4 v11, 0x0

    :goto_1
    return-object v11

    :cond_1
    invoke-static {p2}, Lcom/android/systemui/statusbar/StatusBarPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    array-length v3, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_5

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/ScanResult;

    aget-object v11, p1, v1

    iget-object v12, v9, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    aget-object v11, p1, v1

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    aget-object v11, p1, v1

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-gtz v11, :cond_6

    const/4 v11, 0x0

    goto :goto_1

    :cond_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    new-array v0, v11, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    add-int/lit8 v8, v7, 0x1

    aput-object v4, v0, v7

    move v7, v8

    goto :goto_3

    :cond_7
    move-object v11, v0

    goto :goto_1
.end method

.method private getCdmaLevel(I)I
    .locals 5

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, -0x4b

    if-lt v0, v4, :cond_0

    const/4 v2, 0x4

    :goto_0
    const/16 v4, -0x5a

    if-lt v1, v4, :cond_4

    const/4 v3, 0x4

    :goto_1
    if-ge v2, v3, :cond_8

    move v4, v2

    :goto_2
    return v4

    :cond_0
    const/16 v4, -0x55

    if-lt v0, v4, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    :cond_1
    const/16 v4, -0x5f

    if-lt v0, v4, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    :cond_2
    const/16 v4, -0x64

    if-lt v0, v4, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    const/16 v4, -0x6e

    if-lt v1, v4, :cond_5

    const/4 v3, 0x3

    goto :goto_1

    :cond_5
    const/16 v4, -0x82

    if-lt v1, v4, :cond_6

    const/4 v3, 0x2

    goto :goto_1

    :cond_6
    const/16 v4, -0x96

    if-lt v1, v4, :cond_7

    const/4 v3, 0x1

    goto :goto_1

    :cond_7
    const/4 v3, 0x0

    goto :goto_1

    :cond_8
    move v4, v3

    goto :goto_2
.end method

.method private getEvdoLevel(I)I
    .locals 5

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, -0x41

    if-lt v0, v4, :cond_0

    const/4 v2, 0x4

    :goto_0
    const/4 v4, 0x7

    if-lt v1, v4, :cond_4

    const/4 v3, 0x4

    :goto_1
    if-ge v2, v3, :cond_8

    move v4, v2

    :goto_2
    return v4

    :cond_0
    const/16 v4, -0x4b

    if-lt v0, v4, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    :cond_1
    const/16 v4, -0x5a

    if-lt v0, v4, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    :cond_2
    const/16 v4, -0x69

    if-lt v0, v4, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    const/4 v4, 0x5

    if-lt v1, v4, :cond_5

    const/4 v3, 0x3

    goto :goto_1

    :cond_5
    const/4 v4, 0x3

    if-lt v1, v4, :cond_6

    const/4 v3, 0x2

    goto :goto_1

    :cond_6
    const/4 v4, 0x1

    if-lt v1, v4, :cond_7

    const/4 v3, 0x1

    goto :goto_1

    :cond_7
    const/4 v3, 0x0

    goto :goto_1

    :cond_8
    move v4, v3

    goto :goto_2
.end method

.method private getIconList(I)[I
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    const-string v1, "StatusBarPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " networkId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sSignalImages_g:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sSignalImages_e:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sSignalImages_3g:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sSignalImages_4g:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sSignalImages_g:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getListData()I
    .locals 10

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/StatusBarPolicy;->TRUSTED_LIST_URI:Landroid/net/Uri;

    const-string v5, "priority ASC"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    const/4 v8, 0x0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    const/4 v7, 0x0

    const-string v0, "ssid"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    new-array v0, v8, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSSIDs:[Ljava/lang/String;

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSSIDs:[Ljava/lang/String;

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return v8

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    nop
.end method

.method private getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/StatusBarPolicy$5;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy$5;-><init>(Lcom/android/systemui/statusbar/StatusBarPolicy;I)V

    return-object v0
.end method

.method private hasService(I)Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :pswitch_1
    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private is3GSignal(I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    const-string v1, "StatusBarPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " networkId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCdma(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSignalStrength:[Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEvdo(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNetworkRoaming(I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-static {v1, p1}, Lcom/android/internal/telephony/PhoneFactory;->getServiceName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    const-string v1, "StatusBarPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the sim"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " NetworkRoaming is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private onBatteryLow(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->showLowBatteryWarning()V

    return-void
.end method

.method private onBatteryOkay(Landroid/content/Intent;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->isTick:Ljava/lang/Boolean;

    return-void
.end method

.method private onBatteryOverVol()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "StatusBarPolicy"

    const-string v1, "onBatteryOverVol"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->dismissBatteryOverVolDialog()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v1, 0x7f030003

    invoke-static {v0, v1, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v2, 0x1040014

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v0, 0x1080027

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const v0, 0x104000a

    invoke-virtual {v1, v0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryOverVoltageListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mOverVolDialog:Landroid/app/AlertDialog;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->isTick:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->runable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_sounds_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    const-string v1, "low_battery_sound"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Landroid/media/Ringtone;->setStreamType(I)V

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    :cond_0
    return-void
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x22

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    sub-int v1, v0, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    sub-int v1, v0, v2

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    move-object v1, p0

    goto :goto_0
.end method

.method private final requireUpdateDataIcon(I)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-le v0, v3, :cond_2

    const-string v0, "StatusBarPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " sub"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": default data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getDefaultDataPhoneId(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getDefaultDataPhoneId(Landroid/content/Context;)I

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->simDataValid(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/StatusBarPolicy;->simDataValid(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateDataIcon(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateDataIcon(I)V

    goto :goto_0
.end method

.method private setCurrentApLowest(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->getListData()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->deletePriority(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->addPriority(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateTrustedList()V

    return-void
.end method

.method private setPriority(Ljava/lang/String;I)I
    .locals 6

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "priority"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/StatusBarPolicy;->TRUSTED_LIST_URI:Landroid/net/Uri;

    const-string v3, "ssid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method private showDialog(Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->getListData()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSSIDs:[Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->filterNoRssiAps([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v2, 0x7f040001

    invoke-static {v0, v2, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0a0033

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v3, Lcom/android/systemui/statusbar/StatusBarPolicy$6;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/StatusBarPolicy$6;-><init>(Lcom/android/systemui/statusbar/StatusBarPolicy;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v3, Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v5, 0x109000f

    const v6, 0x1020014

    invoke-direct {v3, v4, v5, v6, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mIndex:I

    invoke-virtual {v0, v3, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f080014

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x104000a

    new-instance v3, Lcom/android/systemui/statusbar/StatusBarPolicy$7;

    invoke-direct {v3, p0, v1}, Lcom/android/systemui/statusbar/StatusBarPolicy$7;-><init>(Lcom/android/systemui/statusbar/StatusBarPolicy;[Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x104

    invoke-virtual {v0, v1, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->weakSignalDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->weakSignalDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->weakSignalDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private showLowBatteryWarning()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->closeLastBatteryView()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v1, 0x7f080007

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_sounds_enabled"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_0

    const-string v1, "low_battery_sound"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v5}, Landroid/media/Ringtone;->setStreamType(I)V

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    const/high16 v2, 0x7f03

    invoke-static {v0, v2, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0a0002

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f080005

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    invoke-virtual {v0, v1, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x5880

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_2

    const v2, 0x7f080008

    new-instance v3, Lcom/android/systemui/statusbar/StatusBarPolicy$2;

    invoke-direct {v3, p0, v1}, Lcom/android/systemui/statusbar/StatusBarPolicy$2;-><init>(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mLowBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->isTick:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->runable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method private showWifiDisconnDialog()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f080012

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f080013

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f080011

    new-instance v2, Lcom/android/systemui/statusbar/StatusBarPolicy$8;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/StatusBarPolicy$8;-><init>(Lcom/android/systemui/statusbar/StatusBarPolicy;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f080010

    new-instance v2, Lcom/android/systemui/statusbar/StatusBarPolicy$9;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/StatusBarPolicy$9;-><init>(Lcom/android/systemui/statusbar/StatusBarPolicy;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private final simDataValid(I)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSimState:[Lcom/android/internal/telephony/IccCard$State;

    aget-object v1, v1, p1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSimState:[Lcom/android/internal/telephony/IccCard$State;

    aget-object v1, v1, p1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->hasService(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataState:[I

    aget v1, v1, p1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    const-string v1, "StatusBarPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "simDataValid sub"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": sim:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSimState:[Lcom/android/internal/telephony/IccCard$State;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " service:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->hasService(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " data:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataState:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private final updateAlarm(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "alarmSet"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "alarm_clock"

    invoke-virtual {v1, v2, v0}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    return-void
.end method

.method private final updateBattery(Landroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v4, "level"

    const-string v0, "icon-small"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "level"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "battery"

    invoke-virtual {v2, v3, v0, v1}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    const-string v0, "plugged"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v6

    :goto_0
    const-string v1, "level"

    const/4 v1, -0x1

    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryPlugged:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryPlugged:Z

    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryLevel:I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryFirst:Z

    if-eqz v0, :cond_0

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryFirst:Z

    :cond_0
    const-string v0, "health"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "status"

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "mjl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "batteryHealth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " batteryStatus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mAlreadyShowOverVol:Z

    if-nez v1, :cond_3

    if-ne v0, v7, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->onBatteryOverVol()V

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mAlreadyShowOverVol:Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v5

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mAlreadyShowOverVol:Z

    if-ne v1, v6, :cond_1

    if-eq v0, v7, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->dismissBatteryOverVolDialog()V

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mAlreadyShowOverVol:Z

    goto :goto_1
.end method

.method private final updateBluetooth(Landroid/content/Intent;)V
    .locals 7

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v6, "bluetooth"

    const v0, 0x7f020072

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x8000

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_3

    move v1, v4

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBluetoothEnabled:Z

    :goto_1
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBluetoothHeadsetState:I

    if-eq v1, v5, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBluetoothA2dpConnected:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBluetoothPbapState:I

    if-ne v1, v5, :cond_1

    :cond_0
    const v0, 0x7f020073

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "bluetooth"

    invoke-virtual {v1, v6, v0, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "bluetooth"

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBluetoothEnabled:Z

    invoke-virtual {v0, v6, v1}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    :cond_2
    return-void

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    const-string v2, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v1, "android.bluetooth.headset.extra.STATE"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBluetoothHeadsetState:I

    goto :goto_1

    :cond_5
    const-string v2, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v1, Landroid/bluetooth/BluetoothA2dp;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothA2dp;->getConnectedSinks()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-eqz v1, :cond_6

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBluetoothA2dpConnected:Z

    goto :goto_1

    :cond_6
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBluetoothA2dpConnected:Z

    goto :goto_1

    :cond_7
    const-string v2, "android.bluetooth.pbap.intent.action.PBAP_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "android.bluetooth.pbap.intent.PBAP_STATE"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBluetoothPbapState:I

    goto :goto_1
.end method

.method private final updateCallState(I)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhoneState:I

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhoneState:I

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryPlugged:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->showLowBatteryWarning()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    goto :goto_0
.end method

.method private updateConnectivity(Landroid/content/Intent;)V
    .locals 11

    const/4 v10, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v9, "wifi"

    const-string v0, "networkInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    check-cast v0, Landroid/net/NetworkInfo;

    const-string v1, "inetCondition"

    invoke-virtual {p1, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x32

    if-le v1, v2, :cond_0

    move v2, v8

    :goto_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubId()I

    move-result v3

    const-string v4, "StatusBarPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connectionStatus is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " info.getType() is:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_1
    return-void

    :cond_0
    move v2, v7

    goto :goto_0

    :sswitch_0
    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mInetCondition:I

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateDataNetType(I)V

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/StatusBarPolicy;->requireUpdateDataIcon(I)V

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateSignalStrength(I)V

    goto :goto_1

    :sswitch_1
    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mInetCondition:I

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mIsWifiConnected:Z

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mLastWifiSignalLevel:I

    if-ne v0, v10, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sWifiSignalImages:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    aget v0, v0, v7

    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "wifi"

    invoke-virtual {v1, v9, v0, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wifi"

    invoke-virtual {v0, v9, v8}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "data_connection"

    invoke-virtual {v0, v1, v7}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    :goto_3
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateSignalStrength(I)V

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sWifiSignalImages:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mLastWifiSignalLevel:I

    aget v0, v0, v1

    goto :goto_2

    :cond_2
    iput v10, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mLastWifiSignalLevel:I

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mIsWifiConnected:Z

    const v0, 0x7f0200f7

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "wifi"

    invoke-virtual {v1, v9, v0, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_3

    :sswitch_2
    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mInetCondition:I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->updateWiMAX(Landroid/content/Intent;)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method private final updateDataIcon(I)V
    .locals 8

    const/4 v7, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    const-string v6, "data_connection"

    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-le v0, v5, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getDefaultDataPhoneId(Landroid/content/Context;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSimState:[Lcom/android/internal/telephony/IccCard$State;

    aget-object v0, v0, v3

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSimState:[Lcom/android/internal/telephony/IccCard$State;

    aget-object v0, v0, v5

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_2

    :cond_0
    const v0, 0x7f0200c5

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "data_connection"

    invoke-virtual {v1, v6, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "data_connection"

    invoke-virtual {v1, v6, v0, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    move v0, p1

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->isCdma(I)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSimState:[Lcom/android/internal/telephony/IccCard$State;

    aget-object v1, v1, v0

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSimState:[Lcom/android/internal/telephony/IccCard$State;

    aget-object v1, v1, v0

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_7

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->hasService(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataState:[I

    aget v0, v1, v0

    if-ne v0, v4, :cond_5

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataActivity:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconList:[I

    aget v0, v0, v3

    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "data_connection"

    invoke-virtual {v1, v6, v0, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    move v0, v5

    :goto_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    invoke-interface {v3, v4, v0}, Lcom/android/internal/app/IBatteryStats;->notePhoneDataConnectionState(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_4
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconVisible:Z

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "data_connection"

    invoke-virtual {v1, v6, v0}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconVisible:Z

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconList:[I

    aget v0, v0, v5

    goto :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconList:[I

    aget v0, v0, v4

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconList:[I

    aget v0, v0, v7

    goto :goto_2

    :cond_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-le v0, v5, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataState:[I

    aget v0, v0, v3

    if-eq v0, v4, :cond_b

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataState:[I

    aget v0, v0, v5

    if-eq v0, v4, :cond_b

    move v0, v3

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataState:[I

    aget v0, v0, v3

    if-eq v0, v4, :cond_b

    move v0, v3

    goto :goto_3

    :cond_7
    const v0, 0x7f0200c5

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "data_connection"

    invoke-virtual {v1, v6, v0, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    move v0, v5

    goto :goto_3

    :cond_8
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->hasService(I)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataState:[I

    aget v0, v1, v0

    if-ne v0, v4, :cond_9

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataActivity:I

    packed-switch v0, :pswitch_data_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconList:[I

    aget v0, v0, v3

    :goto_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "data_connection"

    invoke-virtual {v1, v6, v0, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    move v0, v5

    goto :goto_3

    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconList:[I

    aget v0, v0, v5

    goto :goto_5

    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconList:[I

    aget v0, v0, v4

    goto :goto_5

    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconList:[I

    aget v0, v0, v7

    goto :goto_5

    :cond_9
    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-le v0, v5, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataState:[I

    aget v0, v0, v3

    if-eq v0, v4, :cond_b

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataState:[I

    aget v0, v0, v5

    if-eq v0, v4, :cond_b

    move v0, v3

    goto/16 :goto_3

    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataState:[I

    aget v0, v0, v3

    if-eq v0, v4, :cond_b

    move v0, v3

    goto/16 :goto_3

    :catch_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_b
    move v0, v5

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private final updateDataNetType(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sDataNetType_g:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconList:[I

    :goto_0
    return-void

    :pswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sDataNetType_e:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sDataNetType_3g:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    :pswitch_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sDataNetType_h:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sDataNetType_3g:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sDataNetType_1x:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sDataNetType_1x:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sDataNetType_3g:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private final updateGps(Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v3, "gps"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "enabled"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gps"

    const v1, 0x1080304

    invoke-virtual {v0, v3, v1, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gps"

    invoke-virtual {v0, v3, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gps"

    invoke-virtual {v0, v3, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gps"

    const v1, 0x7f0200ba

    invoke-virtual {v0, v3, v1, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gps"

    invoke-virtual {v0, v3, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private final updateHeadSet(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "headset"

    invoke-virtual {v0, v1, p1}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    return-void
.end method

.method private final updateSignalStrength(I)V
    .locals 9

    const v8, 0x7f0200ef

    const/4 v7, 0x4

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v6, :cond_0

    move v0, v6

    :goto_0
    const-string v1, "StatusBarPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "....."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->hasService(I)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v6

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "...."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " airplane="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->numPhones:I

    if-le v0, v6, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSignalIcon:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhoneSignalIconId:[I

    aput v8, v0, v6

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSignalIcon:[Ljava/lang/String;

    aget-object v1, v1, v6

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhoneSignalIconId:[I

    aget v2, v2, v6

    invoke-virtual {v0, v1, v2, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    :goto_2
    return-void

    :cond_0
    move v0, v5

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhoneSignalIconId:[I

    aput v8, v0, p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSignalIcon:[Ljava/lang/String;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhoneSignalIconId:[I

    aget v2, v2, p1

    invoke-virtual {v0, v1, v2, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v1, v1, p1

    if-eqz v1, :cond_4

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->hasService(I)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v1

    if-nez v1, :cond_6

    :cond_4
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhoneSignalIconId:[I

    aput v8, v0, p1

    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSignalIcon:[Ljava/lang/String;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhoneSignalIconId:[I

    aget v2, v2, p1

    invoke-virtual {v0, v1, v2, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhoneSignalIconId:[I

    const v1, 0x7f0200f0

    aput v1, v0, p1

    goto :goto_3

    :cond_6
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->isCdma(I)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->is3GSignal(I)Z

    move-result v1

    if-eqz v1, :cond_c

    if-lt v0, v6, :cond_7

    const/16 v1, 0x63

    if-ne v0, v1, :cond_8

    :cond_7
    move v1, v5

    :goto_4
    const-string v2, "mjl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "signal is3G="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->is3GSignal(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " || asu="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " || dBm="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x71

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ||iconLevel="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->isNetworkRoaming(I)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sSignalImages_r:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v2

    :goto_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhoneSignalIconId:[I

    aget v0, v0, v1

    aput v0, v2, p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSignalIcon:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSignalIcon:[Ljava/lang/String;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhoneSignalIconId:[I

    aget v2, v2, p1

    invoke-virtual {v0, v1, v2, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto/16 :goto_2

    :cond_8
    const/16 v1, 0xb

    if-lt v0, v1, :cond_9

    move v1, v7

    goto :goto_4

    :cond_9
    const/4 v1, 0x7

    if-lt v0, v1, :cond_a

    const/4 v1, 0x3

    goto :goto_4

    :cond_a
    if-lt v0, v7, :cond_b

    move v1, v4

    goto :goto_4

    :cond_b
    move v1, v6

    goto :goto_4

    :cond_c
    if-lt v0, v4, :cond_d

    const/16 v1, 0x63

    if-ne v0, v1, :cond_e

    :cond_d
    move v1, v5

    goto :goto_4

    :cond_e
    const/16 v1, 0xc

    if-lt v0, v1, :cond_f

    move v1, v7

    goto/16 :goto_4

    :cond_f
    const/16 v1, 0x8

    if-lt v0, v1, :cond_10

    const/4 v1, 0x3

    goto/16 :goto_4

    :cond_10
    const/4 v1, 0x5

    if-lt v0, v1, :cond_11

    move v1, v4

    goto/16 :goto_4

    :cond_11
    move v1, v6

    goto/16 :goto_4

    :cond_12
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->getIconList(I)[I

    move-result-object v0

    goto :goto_5

    :cond_13
    sget-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sSignalImages:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mPhoneState:I

    if-nez v1, :cond_14

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->isEvdo(I)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mAlwaysUseCdmaRssi:Z

    if-nez v1, :cond_14

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->getEvdoLevel(I)I

    move-result v1

    goto :goto_5

    :cond_14
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->getCdmaLevel(I)I

    move-result v1

    goto :goto_5
.end method

.method private final updateSimState(Landroid/content/Intent;)V
    .locals 6

    const-string v4, "ss"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "phone_id"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "ABSENT"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSimState:[Lcom/android/internal/telephony/IccCard$State;

    aput-object v1, v4, v3

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/StatusBarPolicy;->requireUpdateDataIcon(I)V

    return-void

    :cond_0
    const-string v4, "READY"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :cond_1
    const-string v4, "LOCKED"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "reason"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "PIN"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :cond_2
    const-string v4, "PUK"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0
.end method

.method private final updateSyncState(Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "active"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "failing"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "sync_active"

    invoke-virtual {v1, v2, v0}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    return-void
.end method

.method private final updateTTY(Landroid/content/Intent;)V
    .locals 4

    const/4 v2, 0x0

    const-string v3, "tty"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    const-string v0, "ttyEnabled"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "tty"

    const v1, 0x7f0200f6

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "tty"

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "tty"

    invoke-virtual {v0, v3, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private updateTrustedList()V
    .locals 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "whole"

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->getListData()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSSIDs:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSSIDs:[Ljava/lang/String;

    const-string v3, "CMCC"

    aput-object v3, v2, v4

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSSIDs:[Ljava/lang/String;

    const-string v3, "CMCC-EDU"

    aput-object v3, v2, v5

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSSIDs:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-direct {p0, v2, v4}, Lcom/android/systemui/statusbar/StatusBarPolicy;->addPriority(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSSIDs:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-direct {p0, v2, v5}, Lcom/android/systemui/statusbar/StatusBarPolicy;->addPriority(Ljava/lang/String;I)V

    const/4 v1, 0x2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSSIDs:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->setPriority(Ljava/lang/String;I)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v3, "whole"

    const/4 v3, -0x1

    invoke-virtual {v2, v6, v3}, Landroid/net/wifi/WifiManager;->setTrustListPriority(Ljava/lang/String;I)Z

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSSIDs:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3, v0}, Landroid/net/wifi/WifiManager;->setTrustListPriority(Ljava/lang/String;I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v3, "whole"

    const/4 v3, -0x2

    invoke-virtual {v2, v6, v3}, Landroid/net/wifi/WifiManager;->setTrustListPriority(Ljava/lang/String;I)Z

    return-void
.end method

.method private final updateVolume()V
    .locals 7

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v6, "volume"

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getCurrProfilesMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "outdoor"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "general"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v1, :cond_0

    if-eq v1, v4, :cond_0

    if-nez v2, :cond_0

    if-eqz v0, :cond_3

    :cond_0
    move v0, v4

    :goto_0
    if-ne v1, v4, :cond_4

    const v1, 0x7f0200de

    :goto_1
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "volume"

    invoke-virtual {v2, v6, v1, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mVolumeVisible:Z

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "volume"

    invoke-virtual {v1, v6, v0}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mVolumeVisible:Z

    :cond_2
    return-void

    :cond_3
    move v0, v5

    goto :goto_0

    :cond_4
    if-nez v1, :cond_5

    const v1, 0x7f0200dd

    goto :goto_1

    :cond_5
    if-eqz v2, :cond_6

    const v1, 0x7f0200ca

    goto :goto_1

    :cond_6
    const v1, 0x7f0200c7

    goto :goto_1
.end method

.method private final updateWiMAX(Landroid/content/Intent;)V
    .locals 6

    const v4, 0x7f0200ad

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v5, "wimax"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wimax.WIMAX_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "wimax_status"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mIsWimaxEnabled:Z

    invoke-virtual {v0, v5, v1}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    :cond_0
    :goto_1
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mWimaxState:I

    packed-switch v0, :pswitch_data_1

    :pswitch_1
    move v0, v4

    :goto_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mIsWimaxEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "wimax"

    invoke-virtual {v1, v5, v0, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    :cond_1
    return-void

    :pswitch_2
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mIsWimaxEnabled:Z

    goto :goto_0

    :pswitch_3
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mIsWimaxEnabled:Z

    goto :goto_0

    :cond_2
    const-string v1, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "newSignalLevel"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mWimaxSignal:I

    goto :goto_1

    :cond_3
    const-string v1, "android.net.wimax.WIMAX_STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WimaxState"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mWimaxState:I

    const-string v0, "WimaxStateDetail"

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mWimaxExtraState:I

    goto :goto_1

    :pswitch_4
    move v0, v4

    goto :goto_2

    :pswitch_5
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mWimaxExtraState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    const v0, 0x7f0200ae

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->sWimaxSignalImages:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mWimaxSignal:I

    aget v0, v0, v1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_5
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method private final updateWifi(Landroid/content/Intent;)V
    .locals 7

    const v3, 0x7f0200f7

    const/16 v6, -0x55

    const/4 v2, 0x1

    const/4 v4, 0x0

    const-string v5, "wifi"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "wifi_state"

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wifi"

    invoke-virtual {v0, v5, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->isConnected:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mIsWifiConnected:Z

    if-eqz v0, :cond_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wifi"

    invoke-virtual {v0, v5, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wifi"

    invoke-virtual {v0, v5, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_3
    const-string v1, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "connected"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->isConnected:Z

    goto :goto_1

    :cond_4
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v0, "newRssi"

    const/16 v1, -0xc8

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/android/systemui/statusbar/StatusBarPolicy;->sWifiSignalImages:[[I

    aget-object v1, v1, v4

    array-length v1, v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mLastWifiSignalLevel:I

    if-eq v1, v2, :cond_5

    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mLastWifiSignalLevel:I

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mIsWifiConnected:Z

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/systemui/statusbar/StatusBarPolicy;->sWifiSignalImages:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mInetCondition:I

    aget-object v2, v2, v3

    aget v1, v2, v1

    :goto_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "wifi"

    invoke-virtual {v2, v5, v1, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    :cond_5
    if-gt v0, v6, :cond_8

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->isConnected:Z

    if-eqz v1, :cond_8

    const-string v0, "wifi_last_ssid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_auto_connect"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_7

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->showDialog(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move v1, v3

    goto :goto_2

    :cond_7
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->setCurrentApLowest(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->autoConnectOtherTrustAp(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->weakSignalDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    if-le v0, v6, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->weakSignalDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto/16 :goto_1

    :cond_9
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "networkInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v0, :cond_a

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->isConnected:Z

    goto/16 :goto_1

    :cond_a
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/StatusBarPolicy;->isConnected:Z

    goto/16 :goto_1
.end method
