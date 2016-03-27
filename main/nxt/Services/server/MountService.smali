.class Lcom/android/server/MountService;
.super Landroid/os/storage/IMountService$Stub;
.source "MountService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MountService$UnmountObbAction;,
        Lcom/android/server/MountService$MountObbAction;,
        Lcom/android/server/MountService$ObbAction;,
        Lcom/android/server/MountService$ObbActionHandler;,
        Lcom/android/server/MountService$MountServiceBinderListener;,
        Lcom/android/server/MountService$MountServiceHandler;,
        Lcom/android/server/MountService$ShutdownCallBack;,
        Lcom/android/server/MountService$UmsEnableCallBack;,
        Lcom/android/server/MountService$UnmountCallBack;,
        Lcom/android/server/MountService$DefaultContainerConnection;,
        Lcom/android/server/MountService$ObbState;,
        Lcom/android/server/MountService$VoldResponseCode;,
        Lcom/android/server/MountService$CDRomState;,
        Lcom/android/server/MountService$VolumeState;
    }
.end annotation


# static fields
.field private static final BOOT_IPO:Ljava/lang/String; = "android.intent.action.ACTION_BOOT_IPO"

.field private static final CRYPTO_ALGORITHM_KEY_SIZE:I = 0x80

.field private static final DEBUG_EVENTS:Z = true

.field private static final DEBUG_OBB:Z = false

.field private static final DEBUG_UNMOUNT:Z = true

.field static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

.field private static final EXTERNAL_OTG:Ljava/lang/String;

.field private static final EXTERNAL_SD1:Ljava/lang/String;

.field private static final EXTERNAL_SD2:Ljava/lang/String; = "/storage/sdcard1"

.field private static final FIRST_BOOT_MOUNTED:Ljava/lang/String; = "first_boot_mounted"

.field private static final FORMAT_WIPE:Z = true

.field private static final H_SYSTEM_READY:I = 0x4

.field private static final H_UNMOUNT_MS:I = 0x3

.field private static final H_UNMOUNT_PM_DONE:I = 0x2

.field private static final H_UNMOUNT_PM_UPDATE:I = 0x1

.field private static final INSERT_OTG:Ljava/lang/String; = "insert_otg"

.field private static final INTENT_SD_SWAP:Ljava/lang/String; = "com.mediatek.SD_SWAP"

.field private static final LABEL_SD1:Ljava/lang/String; = "sdcard0"

.field private static final LABEL_SD2:Ljava/lang/String; = "sdcard1"

.field private static final LABLE_OTG:Ljava/lang/String; = "usbotg"

.field private static final LABLE_SD:Ljava/lang/String; = "sdcard"

.field private static final LOCAL_LOGD:Z = true

.field private static final MAX_CONTAINERS:I = 0xfa

.field private static final MAX_FILE_SIZE:J = 0xffffffffL

.field private static final MAX_UNMOUNT_RETRIES:I = 0x4

.field private static final MEDIA_EJECT_SHUTDOWN_TIME:I = 0x1f4

.field private static final MEDIA_EJECT_TIME:I = 0x5dc

.field private static final MOUNT_UNMOUNT_ALL:Ljava/lang/String; = "mount_unmount_all"

.field private static final MTP_RESERVE_SPACE:I = 0xa

.field private static final OBB_FLUSH_MOUNT_STATE:I = 0x5

.field private static final OBB_MCS_BOUND:I = 0x2

.field private static final OBB_MCS_RECONNECT:I = 0x4

.field private static final OBB_MCS_UNBIND:I = 0x3

.field private static final OBB_RUN_ACTION:I = 0x1

.field private static final OMADM_SD_FORMAT:Ljava/lang/String; = "com.mediatek.dm.LAWMO_WIPE"

.field private static final OMADM_SYNC_LOCK:Ljava/lang/Object;

.field private static final OMADM_USB_DISABLE:Ljava/lang/String; = "com.mediatek.dm.LAWMO_LOCK"

.field private static final OMADM_USB_ENABLE:Ljava/lang/String; = "com.mediatek.dm.LAWMO_UNLOCK"

.field private static final OTG_EVENT605_LENGTH:I = 0xd

.field private static final OTG_EVENT632_LENGTH:I = 0x7

.field private static final PBKDF2_HASH_ROUNDS:I = 0x400

.field private static final PRIVACY_PROTECTION_LOCK:Ljava/lang/String; = "com.mediatek.ppl.NOTIFY_LOCK"

.field private static final PRIVACY_PROTECTION_UNLOCK:Ljava/lang/String; = "com.mediatek.ppl.NOTIFY_UNLOCK"

.field private static final PRIVACY_PROTECTION_WIPE:Ljava/lang/String; = "com.mediatek.ppl.NOTIFY_MOUNT_SERVICE_WIPE"

.field private static final PRIVACY_PROTECTION_WIPE_DONE:Ljava/lang/String; = "com.mediatek.ppl.MOUNT_SERVICE_WIPE_RESPONSE"

.field private static final PROP_SD_SWAP:Ljava/lang/String; = "vold_swap_state"

.field private static final PROP_SD_SWAP_FALSE:Ljava/lang/String; = "0"

.field private static final PROP_SD_SWAP_TRUE:Ljava/lang/String; = "1"

.field private static final PROP_SWAPPING:Ljava/lang/String; = "sys.sd.swapping"

.field private static final RETRY_UNMOUNT_DELAY:I = 0x1e

.field private static final SD_EXIST:Ljava/lang/String; = "SD_EXIST"

.field private static final TAG:Ljava/lang/String; = "MountService"

.field private static final TAG_STORAGE:Ljava/lang/String; = "storage"

.field private static final TAG_STORAGE_LIST:Ljava/lang/String; = "StorageList"

.field private static final TURNONUSB_SYNC_LOCK:Ljava/lang/Object;

.field private static final VOLD_TAG:Ljava/lang/String; = "VoldConnector"

.field private static final WATCHDOG_ENABLE:Z


# instance fields
.field private final mAsecMountSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

.field private mBootCompleted:Z

.field private final mBootIPOReceiver:Landroid/content/BroadcastReceiver;

.field private final mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

.field private mConnector:Lcom/android/server/NativeDaemonConnector;

.field private mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field private mContext:Landroid/content/Context;

.field private final mDMReceiver:Landroid/content/BroadcastReceiver;

.field private final mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

.field private mEmulatedTemplate:Landroid/os/storage/StorageVolume;

.field private mFirstTimeSDSwapIntent:Z

.field private mFirstTime_SwapStateForSDSwapMountPoint:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mIdleMaintenanceReceiver:Landroid/content/BroadcastReceiver;

.field private mIsAnyAllowUMS:Z

.field private mIsTurnOnOffUsb:Z

.field private mIsUsbConnected:Z

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/MountService$MountServiceBinderListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMountAll:Z

.field private mMountSwap:Z

.field private final mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

.field private final mObbMounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/MountService$ObbState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mObbPathToStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/MountService$ObbState;",
            ">;"
        }
    .end annotation
.end field

.field private mOldUserId:I

.field private mPms:Lcom/android/server/pm/PackageManagerService;

.field private final mPrivacyProtectionReceiver:Landroid/content/BroadcastReceiver;

.field private mSD1BootMounted:Z

.field private mSD2BootMounted:Z

.field private mSendUmsConnectedOnBoot:Z

.field private mSetDefaultEnable:Z

.field private mShutdownCount:I

.field private mShutdownRet:I

.field private mShutdownSD:Z

.field private mSwapStateForSDSwapIntent:Z

.field private mSwapStateForSDSwapMountPoint:Z

.field private volatile mSystemReady:Z

.field private mUMSCount:I

.field private mUmountSdByUserSwitch:Z

.field private mUmsAvailable:Z

.field private mUmsEnabling:Z

.field private mUnmountPrimary:Z

.field private mUnmountSwap:Z

.field private final mUsbReceiver:Landroid/content/BroadcastReceiver;

.field private mUserId:I

.field private final mUserReceiver:Landroid/content/BroadcastReceiver;

.field private mVolumePrimary:Landroid/os/storage/StorageVolume;

.field private mVolumeSecondary:Landroid/os/storage/StorageVolume;

.field private final mVolumeStates:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mVolumesLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumes:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mVolumesLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumesByPath:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mVolumesLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumesLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 258
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;

    .line 261
    sget-object v0, Landroid/os/Environment;->DIRECTORY_USBOTG:Ljava/lang/String;

    sput-object v0, Lcom/android/server/MountService;->EXTERNAL_OTG:Ljava/lang/String;

    .line 272
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/MountService;->TURNONUSB_SYNC_LOCK:Ljava/lang/Object;

    .line 308
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/MountService;->OMADM_SYNC_LOCK:Ljava/lang/Object;

    .line 424
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.defcontainer"

    const-string v2, "com.android.defcontainer.DefaultContainerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/MountService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2493
    invoke-direct/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;-><init>()V

    .line 230
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    .line 237
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    .line 240
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    .line 243
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    .line 246
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mSystemReady:Z

    .line 250
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mUmsAvailable:Z

    .line 252
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    .line 254
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    .line 255
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    .line 256
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    .line 270
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mIsAnyAllowUMS:Z

    .line 271
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/MountService;->mShutdownCount:I

    .line 277
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mBootCompleted:Z

    .line 278
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mShutdownSD:Z

    .line 279
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/MountService;->mShutdownRet:I

    .line 280
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mSD1BootMounted:Z

    .line 281
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mSD2BootMounted:Z

    .line 283
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mIsTurnOnOffUsb:Z

    .line 284
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mIsUsbConnected:Z

    .line 285
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/MountService;->mUMSCount:I

    .line 286
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mSetDefaultEnable:Z

    .line 287
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mMountAll:Z

    .line 288
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mUnmountPrimary:Z

    .line 296
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mMountSwap:Z

    .line 297
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mUnmountSwap:Z

    .line 300
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mFirstTimeSDSwapIntent:Z

    .line 301
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mSwapStateForSDSwapIntent:Z

    .line 302
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mSwapStateForSDSwapMountPoint:Z

    .line 303
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/MountService;->mFirstTime_SwapStateForSDSwapMountPoint:Z

    .line 318
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/MountService;->mOldUserId:I

    .line 319
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/MountService;->mUserId:I

    .line 327
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    .line 345
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    .line 348
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    .line 427
    new-instance v2, Lcom/android/server/MountService$DefaultContainerConnection;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/MountService$DefaultContainerConnection;-><init>(Lcom/android/server/MountService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

    .line 444
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    .line 907
    new-instance v2, Lcom/android/server/MountService$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/MountService$2;-><init>(Lcom/android/server/MountService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 946
    new-instance v2, Lcom/android/server/MountService$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/MountService$3;-><init>(Lcom/android/server/MountService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    .line 957
    new-instance v2, Lcom/android/server/MountService$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/MountService$4;-><init>(Lcom/android/server/MountService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mIdleMaintenanceReceiver:Landroid/content/BroadcastReceiver;

    .line 979
    new-instance v2, Lcom/android/server/MountService$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/MountService$5;-><init>(Lcom/android/server/MountService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mDMReceiver:Landroid/content/BroadcastReceiver;

    .line 1059
    new-instance v2, Lcom/android/server/MountService$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/MountService$6;-><init>(Lcom/android/server/MountService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mPrivacyProtectionReceiver:Landroid/content/BroadcastReceiver;

    .line 1183
    new-instance v2, Lcom/android/server/MountService$7;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/MountService$7;-><init>(Lcom/android/server/MountService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mBootIPOReceiver:Landroid/content/BroadcastReceiver;

    .line 2494
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    .line 2496
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2497
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->readStorageListLocked()V

    .line 2498
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2501
    const-string v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 2503
    new-instance v13, Landroid/os/HandlerThread;

    const-string v2, "MountService"

    invoke-direct {v13, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 2504
    .local v13, "hthread":Landroid/os/HandlerThread;
    invoke-virtual {v13}, Landroid/os/HandlerThread;->start()V

    .line 2505
    new-instance v2, Lcom/android/server/MountService$MountServiceHandler;

    invoke-virtual {v13}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/MountService$MountServiceHandler;-><init>(Lcom/android/server/MountService;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    .line 2508
    new-instance v17, Landroid/content/IntentFilter;

    invoke-direct/range {v17 .. v17}, Landroid/content/IntentFilter;-><init>()V

    .line 2509
    .local v17, "userFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_ADDED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2510
    const-string v2, "android.intent.action.USER_REMOVED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2513
    const-string v2, "android.intent.action.USER_SWITCHED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2514
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0, v4, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2518
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2519
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/storage/StorageVolume;

    .line 2520
    .local v18, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual/range {v18 .. v18}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2521
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2526
    .end local v18    # "volume":Landroid/os/storage/StorageVolume;
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2537
    new-instance v15, Landroid/content/IntentFilter;

    invoke-direct {v15}, Landroid/content/IntentFilter;-><init>()V

    .line 2538
    .local v15, "privacyProtectionFilter":Landroid/content/IntentFilter;
    const-string v2, "com.mediatek.ppl.NOTIFY_LOCK"

    invoke-virtual {v15, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2539
    const-string v2, "com.mediatek.ppl.NOTIFY_UNLOCK"

    invoke-virtual {v15, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2540
    const-string v2, "com.mediatek.ppl.NOTIFY_MOUNT_SERVICE_WIPE"

    invoke-virtual {v15, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2541
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mPrivacyProtectionReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v15, v4, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2544
    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    .line 2545
    .local v12, "bootIPOFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2546
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2547
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mBootIPOReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v12, v4, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2550
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 2551
    .local v5, "idleMaintenanceFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACTION_IDLE_MAINTENANCE_START"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2552
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mIdleMaintenanceReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2556
    new-instance v2, Lcom/android/server/MountService$ObbActionHandler;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/MountService$ObbActionHandler;-><init>(Lcom/android/server/MountService;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    .line 2563
    new-instance v6, Lcom/android/server/NativeDaemonConnector;

    const-string v8, "vold"

    const/16 v9, 0x1f4

    const-string v10, "VoldConnector"

    const/16 v11, 0x19

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 2565
    new-instance v16, Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "VoldConnector"

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2566
    .local v16, "thread":Ljava/lang/Thread;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Thread;->start()V

    .line 2572
    return-void

    .line 2498
    .end local v5    # "idleMaintenanceFilter":Landroid/content/IntentFilter;
    .end local v12    # "bootIPOFilter":Landroid/content/IntentFilter;
    .end local v13    # "hthread":Landroid/os/HandlerThread;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v15    # "privacyProtectionFilter":Landroid/content/IntentFilter;
    .end local v16    # "thread":Ljava/lang/Thread;
    .end local v17    # "userFilter":Landroid/content/IntentFilter;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2526
    .restart local v13    # "hthread":Landroid/os/HandlerThread;
    .restart local v17    # "userFilter":Landroid/content/IntentFilter;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method static synthetic access$000(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/MountService;Ljava/lang/String;ZZ)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 115
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/MountService;->doUnmountVolume(Ljava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/MountService;Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/os/storage/StorageVolume;
    .param p3, "x3"    # Landroid/os/UserHandle;

    .prologue
    .line 115
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$1100()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/android/server/MountService;->TURNONUSB_SYNC_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 115
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/MountService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    iget v0, p0, Lcom/android/server/MountService;->mUMSCount:I

    return v0
.end method

.method static synthetic access$1310(Lcom/android/server/MountService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    iget v0, p0, Lcom/android/server/MountService;->mUMSCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/MountService;->mUMSCount:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/MountService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/server/MountService;->mIsTurnOnOffUsb:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/MountService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/server/MountService;->mUnmountPrimary:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/MountService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/server/MountService;->mUnmountPrimary:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/MountService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    iget v0, p0, Lcom/android/server/MountService;->mShutdownRet:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/MountService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # I

    .prologue
    .line 115
    iput p1, p0, Lcom/android/server/MountService;->mShutdownRet:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/MountService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    iget v0, p0, Lcom/android/server/MountService;->mShutdownCount:I

    return v0
.end method

.method static synthetic access$1710(Lcom/android/server/MountService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    iget v0, p0, Lcom/android/server/MountService;->mShutdownCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/MountService;->mShutdownCount:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/MountService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/server/MountService;->mShutdownSD:Z

    return p1
.end method

.method static synthetic access$1900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/MountService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/server/MountService;->mUnmountSwap:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/MountService;)Lcom/android/server/pm/PackageManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/MountService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/server/MountService;->mUnmountSwap:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/MountService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/MountService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/server/MountService;->handleSystemReady()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/MountService;Landroid/os/UserHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Landroid/os/UserHandle;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->createEmulatedVolumeForUserLocked(Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/MountService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->removeVolumeLocked(Landroid/os/storage/StorageVolume;)V

    return-void
.end method

.method static synthetic access$2602(Lcom/android/server/MountService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # I

    .prologue
    .line 115
    iput p1, p0, Lcom/android/server/MountService;->mOldUserId:I

    return p1
.end method

.method static synthetic access$2700(Lcom/android/server/MountService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    iget v0, p0, Lcom/android/server/MountService;->mUserId:I

    return v0
.end method

.method static synthetic access$2702(Lcom/android/server/MountService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # I

    .prologue
    .line 115
    iput p1, p0, Lcom/android/server/MountService;->mUserId:I

    return p1
.end method

.method static synthetic access$2800(Lcom/android/server/MountService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->notifyShareAvailabilityChange(Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/MountService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/MountService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/server/MountService;->doSDSwapVolumeUpdate()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    return-object v0
.end method

.method static synthetic access$3100()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/android/server/MountService;->OMADM_SYNC_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/MountService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->enableUSBFuction(Z)V

    return-void
.end method

.method static synthetic access$3300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/android/server/MountService;->EXTERNAL_OTG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/MountService;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doFormatVolume(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/MountService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/android/server/MountService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/server/MountService;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$3702(Lcom/android/server/MountService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/server/MountService;->mFirstTime_SwapStateForSDSwapMountPoint:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/android/server/MountService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/MountService;)Landroid/os/storage/StorageVolume;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumePrimary:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/MountService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/server/MountService;->updateDefaultpath()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/MountService;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/android/server/MountService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/server/MountService;->enableDefaultPathDialog()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/android/server/MountService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/android/server/MountService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Lcom/android/internal/app/IMediaContainerService;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/android/server/MountService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/server/MountService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Lcom/android/server/MountService$ObbState;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->removeObbStateLocked(Lcom/android/server/MountService$ObbState;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/MountService;)Lcom/android/server/MountService$DefaultContainerConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/MountService;->mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/server/MountService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/MountService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/server/MountService;->sendSDSwapIntent()V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/MountService;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5100(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Lcom/android/server/MountService$ObbState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->addObbStateLocked(Lcom/android/server/MountService$ObbState;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/server/MountService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/server/MountService;->doGetCDRomState()I

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Lcom/android/server/MountService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doShareUnshareCDRom(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/MountService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/server/MountService;->mIsUsbConnected:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/MountService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/server/MountService;->mIsUsbConnected:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/MountService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/MountService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Landroid/os/storage/StorageVolume;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    return-void
.end method

.method private addObbStateLocked(Lcom/android/server/MountService$ObbState;)V
    .locals 7
    .param p1, "obbState"    # Lcom/android/server/MountService$ObbState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3662
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3663
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3665
    .local v4, "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    if-nez v4, :cond_1

    .line 3666
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3667
    .restart local v4    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3677
    :cond_0
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3679
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->link()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3694
    iget-object v5, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    iget-object v6, p1, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v5, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3695
    return-void

    .line 3669
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/MountService$ObbState;

    .line 3670
    .local v3, "o":Lcom/android/server/MountService$ObbState;
    iget-object v5, v3, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3671
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Attempt to add ObbState twice. This indicates an error in the MountService logic."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3680
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "o":Lcom/android/server/MountService$ObbState;
    :catch_0
    move-exception v1

    .line 3685
    .local v1, "e":Landroid/os/RemoteException;
    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3686
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3687
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3691
    :cond_3
    throw v1
.end method

.method private addVolumeLocked(Landroid/os/storage/StorageVolume;)V
    .locals 4
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 2460
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addVolumeLocked() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2461
    iget-object v1, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2462
    iget-object v1, p0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageVolume;

    .line 2463
    .local v0, "existing":Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_0

    .line 2464
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Volume at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already exists: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2468
    :cond_0
    return-void
.end method

.method public static buildObbPath(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 9
    .param p0, "canonicalPath"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "forVold"    # Z

    .prologue
    const/4 v8, 0x0

    .line 4124
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v6

    if-nez v6, :cond_1

    .line 4165
    .end local p0    # "canonicalPath":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 4128
    .restart local p0    # "canonicalPath":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4131
    .local v4, "path":Ljava/lang/String;
    new-instance v5, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v5, p1}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 4134
    .local v5, "userEnv":Landroid/os/Environment$UserEnvironment;
    invoke-virtual {v5}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 4136
    .local v0, "externalPath":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 4139
    .local v1, "legacyExternalPath":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4140
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 4148
    :goto_1
    const-string v2, "Android/obb"

    .line 4149
    .local v2, "obbPath":Ljava/lang/String;
    const-string v6, "Android/obb"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4150
    const-string v6, "Android/obb"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 4152
    if-eqz p2, :cond_3

    .line 4153
    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getEmulatedStorageObbSource()Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4141
    .end local v2    # "obbPath":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4142
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 4155
    .restart local v2    # "obbPath":Ljava/lang/String;
    :cond_3
    new-instance v3, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v3, v8}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 4156
    .local v3, "ownerEnv":Landroid/os/Environment$UserEnvironment;
    new-instance v6, Ljava/io/File;

    invoke-virtual {v3}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAndroidObbDirs()[Ljava/io/File;

    move-result-object v7

    aget-object v7, v7, v8

    invoke-direct {v6, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4162
    .end local v3    # "ownerEnv":Landroid/os/Environment$UserEnvironment;
    :cond_4
    if-eqz p2, :cond_5

    .line 4163
    new-instance v6, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getEmulatedStorageSource(I)Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 4165
    :cond_5
    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Landroid/os/Environment$UserEnvironment;->getExternalDirsForApp()[Ljava/io/File;

    move-result-object v7

    aget-object v7, v7, v8

    invoke-direct {v6, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method

.method private createEmulatedVolumeForUserLocked(Landroid/os/UserHandle;)V
    .locals 6
    .param p1, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 2440
    iget-object v3, p0, Lcom/android/server/MountService;->mEmulatedTemplate:Landroid/os/storage/StorageVolume;

    if-nez v3, :cond_0

    .line 2441
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Missing emulated volume multi-user template"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2444
    :cond_0
    new-instance v1, Landroid/os/Environment$UserEnvironment;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-direct {v1, v3}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 2445
    .local v1, "userEnv":Landroid/os/Environment$UserEnvironment;
    invoke-virtual {v1}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 2446
    .local v0, "path":Ljava/io/File;
    iget-object v3, p0, Lcom/android/server/MountService;->mEmulatedTemplate:Landroid/os/storage/StorageVolume;

    invoke-static {v3, v0, p1}, Landroid/os/storage/StorageVolume;->fromTemplate(Landroid/os/storage/StorageVolume;Ljava/io/File;Landroid/os/UserHandle;)Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 2447
    .local v2, "volume":Landroid/os/storage/StorageVolume;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageVolume;->setStorageId(I)V

    .line 2448
    invoke-direct {p0, v2}, Lcom/android/server/MountService;->addVolumeLocked(Landroid/os/storage/StorageVolume;)V

    .line 2450
    iget-boolean v3, p0, Lcom/android/server/MountService;->mSystemReady:Z

    if-eqz v3, :cond_1

    .line 2451
    const-string v3, "mounted"

    invoke-direct {p0, v2, v3}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 2457
    :goto_0
    return-void

    .line 2454
    :cond_1
    iget-object v3, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2455
    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageVolume;->setState(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doFormatVolume(Ljava/lang/String;)I
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2173
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "volume"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "format"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    const-string v7, "wipe"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2185
    :goto_0
    return v2

    .line 2178
    :catch_0
    move-exception v1

    .line 2179
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 2180
    .local v0, "code":I
    const/16 v2, 0x191

    if-ne v0, v2, :cond_0

    .line 2181
    const/4 v2, -0x2

    goto :goto_0

    .line 2182
    :cond_0
    const/16 v2, 0x193

    if-ne v0, v2, :cond_1

    .line 2183
    const/4 v2, -0x4

    goto :goto_0

    .line 2185
    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private doGetCDRomState()I
    .locals 15

    .prologue
    const/4 v9, 0x2

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 4285
    :try_start_0
    iget-object v10, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v11, "cd-rom"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "status"

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4291
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getRawEvent()Ljava/lang/String;

    move-result-object v4

    .line 4292
    .local v4, "rawEvent":Ljava/lang/String;
    const-string v10, " "

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 4293
    .local v5, "tok":[Ljava/lang/String;
    array-length v10, v5

    if-ge v10, v9, :cond_0

    .line 4294
    const-string v7, "MountService"

    const-string v8, "Malformed response get CD rom ststus"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4322
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    .end local v4    # "rawEvent":Ljava/lang/String;
    .end local v5    # "tok":[Ljava/lang/String;
    :goto_0
    return v6

    .line 4286
    :catch_0
    move-exception v2

    .line 4287
    .local v2, "ex":Lcom/android/server/NativeDaemonConnectorException;
    const-string v7, "MountService"

    const-string v8, "Failed to get CD rom ststus!"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4300
    .end local v2    # "ex":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    .restart local v4    # "rawEvent":Ljava/lang/String;
    .restart local v5    # "tok":[Ljava/lang/String;
    :cond_0
    const/4 v10, 0x0

    :try_start_1
    aget-object v10, v5, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 4305
    .local v0, "code":I
    const/16 v10, 0xd6

    if-ne v0, v10, :cond_5

    .line 4306
    const-string v10, "Shared"

    aget-object v11, v5, v8

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v6, v7

    .line 4307
    goto :goto_0

    .line 4301
    .end local v0    # "code":I
    :catch_1
    move-exception v3

    .line 4302
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    const-string v9, "MountService"

    const-string v10, "Error parsing code %s"

    new-array v8, v8, [Ljava/lang/Object;

    aget-object v11, v5, v7

    aput-object v11, v8, v7

    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4308
    .end local v3    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v0    # "code":I
    :cond_1
    const-string v7, "Unshared"

    aget-object v10, v5, v8

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v6, v8

    .line 4309
    goto :goto_0

    .line 4310
    :cond_2
    const-string v7, "Sharing"

    aget-object v10, v5, v8

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v6, v9

    .line 4311
    goto :goto_0

    .line 4312
    :cond_3
    const-string v7, "Unsharing"

    aget-object v9, v5, v8

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 4313
    const/4 v6, 0x3

    goto :goto_0

    .line 4314
    :cond_4
    const-string v7, "Not_Exist"

    aget-object v8, v5, v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 4315
    const/4 v6, 0x4

    goto :goto_0

    .line 4318
    :cond_5
    const-string v9, "MountService"

    const-string v10, "Unexpected response code %d"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v7

    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4321
    :cond_6
    const-string v7, "MountService"

    const-string v8, "Got an empty response"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doGetVolumeShared(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2193
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "volume"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "shared"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2199
    .local v0, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v3

    const/16 v4, 0xd4

    if-ne v3, v4, :cond_0

    .line 2200
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "enabled"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    .line 2202
    .end local v0    # "event":Lcom/android/server/NativeDaemonEvent;
    :cond_0
    :goto_0
    return v2

    .line 2194
    :catch_0
    move-exception v1

    .line 2195
    .local v1, "ex":Lcom/android/server/NativeDaemonConnectorException;
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read response to volume shared "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doMountVolume(Ljava/lang/String;)I
    .locals 10
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1992
    const/4 v4, 0x0

    .line 1995
    .local v4, "rc":I
    iget-object v7, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1996
    :try_start_0
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageVolume;

    .line 1997
    .local v5, "volume":Landroid/os/storage/StorageVolume;
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1999
    const-string v6, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doMountVolume: Mouting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2001
    :try_start_1
    new-instance v1, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v6, "volume"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "mount"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    invoke-direct {v1, v6, v7}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2002
    .local v1, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    iget-boolean v6, p0, Lcom/android/server/MountService;->mMountSwap:Z

    if-eqz v6, :cond_0

    .line 2003
    const-string v6, "swap"

    invoke-virtual {v1, v6}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2005
    :cond_0
    const-string v6, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doMountVolume  cmd:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    iget-object v6, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v6, v1}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2046
    .end local v1    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :cond_1
    :goto_0
    return v4

    .line 1997
    .end local v5    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 2007
    .restart local v5    # "volume":Landroid/os/storage/StorageVolume;
    :catch_0
    move-exception v3

    .line 2011
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v0, 0x0

    .line 2012
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v2

    .line 2013
    .local v2, "code":I
    const/16 v6, 0x191

    if-ne v2, v6, :cond_2

    .line 2017
    const/4 v4, -0x2

    .line 2041
    :goto_1
    if-eqz v0, :cond_1

    .line 2042
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v5, v6}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 2018
    :cond_2
    const/16 v6, 0x192

    if-ne v2, v6, :cond_3

    .line 2019
    const-string v6, "MountService"

    const-string v7, " updating volume state :: media nofs"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    const-string v6, "nofs"

    invoke-direct {p0, v5, v6}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 2024
    const-string v0, "android.intent.action.MEDIA_NOFS"

    .line 2025
    const/4 v4, -0x3

    goto :goto_1

    .line 2026
    :cond_3
    const/16 v6, 0x193

    if-ne v2, v6, :cond_4

    .line 2027
    const-string v6, "MountService"

    const-string v7, "updating volume state media corrupt"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    const-string v6, "unmountable"

    invoke-direct {p0, v5, v6}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 2032
    const-string v0, "android.intent.action.MEDIA_UNMOUNTABLE"

    .line 2033
    const/4 v4, -0x4

    goto :goto_1

    .line 2035
    :cond_4
    const/4 v4, -0x1

    goto :goto_1
.end method

.method private doSDSwapVolumeUpdate()V
    .locals 18

    .prologue
    .line 4377
    const-string v3, "MountService"

    const-string v4, "doSDSwapVolumeUpdate"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4387
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumePrimary:Landroid/os/storage/StorageVolume;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumeSecondary:Landroid/os/storage/StorageVolume;

    if-nez v3, :cond_1

    .line 4388
    :cond_0
    const-string v3, "MountService"

    const-string v4, "doSDSwapVolumeUpdate: mVolumePrimary == null || mVolumeSecondary == null, return!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4482
    :goto_0
    return-void

    .line 4393
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->getSwapState()Z

    move-result v15

    .line 4395
    .local v15, "sdSwapStatus":Z
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/MountService;->mFirstTime_SwapStateForSDSwapMountPoint:Z

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/MountService;->mSwapStateForSDSwapMountPoint:Z

    if-eq v15, v3, :cond_4

    .line 4396
    :cond_2
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/MountService;->mSwapStateForSDSwapMountPoint:Z

    .line 4397
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/MountService;->mFirstTime_SwapStateForSDSwapMountPoint:Z

    .line 4406
    if-eqz v15, :cond_6

    .line 4408
    const-string v3, "MountService"

    const-string v4, "doSDSwapVolumeUpdate: SD swap!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 4410
    :try_start_0
    new-instance v1, Landroid/os/storage/StorageVolume;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumePrimary:Landroid/os/storage/StorageVolume;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumeSecondary:Landroid/os/storage/StorageVolume;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getDescriptionId()I

    move-result v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/MountService;->mVolumeSecondary:Landroid/os/storage/StorageVolume;

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/MountService;->mVolumeSecondary:Landroid/os/storage/StorageVolume;

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/MountService;->mVolumeSecondary:Landroid/os/storage/StorageVolume;

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getMtpReserveSpace()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/MountService;->mVolumeSecondary:Landroid/os/storage/StorageVolume;

    invoke-virtual {v8}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/MountService;->mVolumeSecondary:Landroid/os/storage/StorageVolume;

    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->getMaxFileSize()J

    move-result-wide v9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/MountService;->mVolumeSecondary:Landroid/os/storage/StorageVolume;

    invoke-virtual {v11}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object v11

    invoke-direct/range {v1 .. v11}, Landroid/os/storage/StorageVolume;-><init>(Ljava/io/File;IZZZIZJLandroid/os/UserHandle;)V

    .line 4421
    .local v1, "pVolume":Landroid/os/storage/StorageVolume;
    new-instance v2, Landroid/os/storage/StorageVolume;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumeSecondary:Landroid/os/storage/StorageVolume;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumePrimary:Landroid/os/storage/StorageVolume;

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getDescriptionId()I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/MountService;->mVolumePrimary:Landroid/os/storage/StorageVolume;

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/MountService;->mVolumePrimary:Landroid/os/storage/StorageVolume;

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/MountService;->mVolumePrimary:Landroid/os/storage/StorageVolume;

    invoke-virtual {v8}, Landroid/os/storage/StorageVolume;->getMtpReserveSpace()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/MountService;->mVolumePrimary:Landroid/os/storage/StorageVolume;

    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/MountService;->mVolumePrimary:Landroid/os/storage/StorageVolume;

    invoke-virtual {v10}, Landroid/os/storage/StorageVolume;->getMaxFileSize()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService;->mVolumePrimary:Landroid/os/storage/StorageVolume;

    invoke-virtual {v12}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object v12

    invoke-direct/range {v2 .. v12}, Landroid/os/storage/StorageVolume;-><init>(Ljava/io/File;IZZZIZJLandroid/os/UserHandle;)V

    .line 4432
    .local v2, "tVolume":Landroid/os/storage/StorageVolume;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    sget-object v4, Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4433
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    const-string v4, "/storage/sdcard1"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4435
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 4436
    .local v14, "length":I
    if-lez v14, :cond_3

    .line 4437
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4438
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    if-ge v13, v14, :cond_3

    .line 4439
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/storage/sdcard1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4440
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3, v13, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4445
    .end local v13    # "i":I
    :cond_3
    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4466
    .end local v1    # "pVolume":Landroid/os/storage/StorageVolume;
    .end local v2    # "tVolume":Landroid/os/storage/StorageVolume;
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4467
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 4468
    const/16 v16, 0x0

    .line 4469
    .local v16, "volume":Landroid/os/storage/StorageVolume;
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_3
    if-ge v13, v14, :cond_9

    .line 4470
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "volume":Landroid/os/storage/StorageVolume;
    check-cast v16, Landroid/os/storage/StorageVolume;

    .line 4471
    .restart local v16    # "volume":Landroid/os/storage/StorageVolume;
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/os/storage/StorageVolume;->setStorageId(I)V

    .line 4472
    const-string v3, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doSDSwapVolumeUpdate  path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " description: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " removable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " emulated: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mtpReserve: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->getMtpReserveSpace()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " allowMassStorage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " maxFileSize: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->getMaxFileSize()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 4469
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 4400
    .end local v13    # "i":I
    .end local v14    # "length":I
    .end local v16    # "volume":Landroid/os/storage/StorageVolume;
    :cond_4
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doSDSwapVolumeUpdate: already update the mount point path, Just skip this. status:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4438
    .restart local v1    # "pVolume":Landroid/os/storage/StorageVolume;
    .restart local v2    # "tVolume":Landroid/os/storage/StorageVolume;
    .restart local v13    # "i":I
    .restart local v14    # "length":I
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 4445
    .end local v1    # "pVolume":Landroid/os/storage/StorageVolume;
    .end local v2    # "tVolume":Landroid/os/storage/StorageVolume;
    .end local v13    # "i":I
    .end local v14    # "length":I
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 4448
    :cond_6
    const-string v3, "MountService"

    const-string v4, "doSDSwapVolumeUpdate: SD NOT swap!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4449
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4450
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    sget-object v5, Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/MountService;->mVolumePrimary:Landroid/os/storage/StorageVolume;

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4451
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    const-string v5, "/storage/sdcard1"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/MountService;->mVolumeSecondary:Landroid/os/storage/StorageVolume;

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4453
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 4454
    .restart local v14    # "length":I
    if-lez v14, :cond_7

    .line 4455
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/MountService;->mVolumePrimary:Landroid/os/storage/StorageVolume;

    invoke-virtual {v3, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4456
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_4
    if-ge v13, v14, :cond_7

    .line 4457
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v5, "/storage/sdcard1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 4458
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/MountService;->mVolumeSecondary:Landroid/os/storage/StorageVolume;

    invoke-virtual {v3, v13, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4463
    .end local v13    # "i":I
    :cond_7
    monitor-exit v4

    goto/16 :goto_2

    .end local v14    # "length":I
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 4456
    .restart local v13    # "i":I
    .restart local v14    # "length":I
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 4481
    .restart local v16    # "volume":Landroid/os/storage/StorageVolume;
    :cond_9
    :try_start_4
    monitor-exit v4

    goto/16 :goto_0

    .end local v13    # "i":I
    .end local v16    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v3
.end method

.method private doShareSDVolumeUpdate()V
    .locals 0

    .prologue
    .line 4359
    return-void
.end method

.method private doShareUnshareCDRom(Z)V
    .locals 6
    .param p1, "share"    # Z

    .prologue
    .line 4271
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doShareUnshareCDRom"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4273
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cd-rom"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    const-string v1, "share"

    :goto_0
    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 4277
    :goto_1
    return-void

    .line 4273
    :cond_0
    const-string v1, "unshare"
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4274
    :catch_0
    move-exception v0

    .line 4275
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v1, "MountService"

    const-string v2, "Failed to share/unshare CD Rom"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1284
    const-string v1, "ums"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1285
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Method %s not supported"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1289
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "volume"

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-eqz p3, :cond_1

    const-string v1, "share"

    :goto_0
    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object p1, v4, v1

    const/4 v1, 0x2

    aput-object p2, v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1293
    :goto_1
    return-void

    .line 1289
    :cond_1
    const-string v1, "unshare"
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1290
    :catch_0
    move-exception v0

    .line 1291
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v1, "MountService"

    const-string v2, "Failed to share/unshare"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private doUnmountVolume(Ljava/lang/String;ZZ)I
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .param p3, "removeEncryption"    # Z

    .prologue
    const/16 v3, 0x194

    const/4 v4, 0x0

    .line 2061
    invoke-virtual {p0, p1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2112
    :goto_0
    return v3

    .line 2071
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->gc()V

    .line 2072
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 2076
    sget-object v5, Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2077
    iget-object v5, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5, v4, v4}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    .line 2081
    :cond_1
    :try_start_0
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v5, "volume"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "unmount"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-direct {v0, v5, v6}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2082
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    if-eqz p3, :cond_3

    .line 2083
    iget-boolean v5, p0, Lcom/android/server/MountService;->mUnmountSwap:Z

    if-eqz v5, :cond_2

    .line 2084
    const-string v5, "force_and_revert_and_swap"

    invoke-virtual {v0, v5}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2097
    :goto_1
    iget-object v5, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v5, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;

    .line 2099
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2100
    :try_start_1
    iget-object v6, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 2101
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v4

    .line 2102
    goto :goto_0

    .line 2086
    :cond_2
    :try_start_2
    const-string v5, "force_and_revert"

    invoke-virtual {v0, v5}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 2103
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :catch_0
    move-exception v2

    .line 2106
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 2107
    .local v1, "code":I
    if-ne v1, v3, :cond_6

    .line 2108
    const/4 v3, -0x5

    goto :goto_0

    .line 2088
    .end local v1    # "code":I
    .end local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :cond_3
    if-eqz p2, :cond_5

    .line 2089
    :try_start_3
    iget-boolean v5, p0, Lcom/android/server/MountService;->mUnmountSwap:Z

    if-eqz v5, :cond_4

    .line 2090
    const-string v5, "force_and_swap"

    invoke-virtual {v0, v5}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    goto :goto_1

    .line 2092
    :cond_4
    const-string v5, "force"

    invoke-virtual {v0, v5}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    goto :goto_1

    .line 2095
    :cond_5
    const-string v5, "swap"

    invoke-virtual {v0, v5}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;
    :try_end_3
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 2101
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v4
    :try_end_5
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_5 .. :try_end_5} :catch_0

    .line 2109
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    .restart local v1    # "code":I
    .restart local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :cond_6
    const/16 v3, 0x195

    if-ne v1, v3, :cond_7

    .line 2110
    const/4 v3, -0x7

    goto :goto_0

    .line 2112
    :cond_7
    const/4 v3, -0x1

    goto :goto_0
.end method

.method private doUnmountVolumeForUserSwitch(Ljava/lang/String;ZZ)I
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .param p3, "removeEncryption"    # Z

    .prologue
    const/4 v3, 0x0

    .line 2125
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    .line 2126
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 2130
    sget-object v4, Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2131
    iget-object v4, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4, v3, v3}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    .line 2135
    :cond_0
    :try_start_0
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v4, "volume"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "unmount"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-direct {v0, v4, v5}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2136
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    if-eqz p3, :cond_2

    .line 2137
    iget-boolean v4, p0, Lcom/android/server/MountService;->mUnmountSwap:Z

    if-eqz v4, :cond_1

    .line 2138
    const-string v4, "force_and_revert_and_swap"

    invoke-virtual {v0, v4}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2151
    :goto_0
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;

    .line 2153
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v4
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2154
    :try_start_1
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    .line 2155
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2166
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :goto_1
    return v3

    .line 2140
    .restart local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :cond_1
    :try_start_2
    const-string v4, "force_and_revert"

    invoke-virtual {v0, v4}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 2157
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :catch_0
    move-exception v2

    .line 2160
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 2161
    .local v1, "code":I
    const/16 v3, 0x194

    if-ne v1, v3, :cond_5

    .line 2162
    const/4 v3, -0x5

    goto :goto_1

    .line 2142
    .end local v1    # "code":I
    .end local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :cond_2
    if-eqz p2, :cond_4

    .line 2143
    :try_start_3
    iget-boolean v4, p0, Lcom/android/server/MountService;->mUnmountSwap:Z

    if-eqz v4, :cond_3

    .line 2144
    const-string v4, "force_and_swap"

    invoke-virtual {v0, v4}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    goto :goto_0

    .line 2146
    :cond_3
    const-string v4, "force"

    invoke-virtual {v0, v4}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    goto :goto_0

    .line 2149
    :cond_4
    const-string v4, "swap"

    invoke-virtual {v0, v4}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;
    :try_end_3
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 2155
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_5 .. :try_end_5} :catch_0

    .line 2163
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    .restart local v1    # "code":I
    .restart local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :cond_5
    const/16 v3, 0x195

    if-ne v1, v3, :cond_6

    .line 2164
    const/4 v3, -0x7

    goto :goto_1

    .line 2166
    :cond_6
    const/4 v3, -0x1

    goto :goto_1
.end method

.method private enableDefaultPathDialog()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    .line 4642
    const/4 v2, 0x0

    .line 4643
    .local v2, "mountCount":I
    iget-object v5, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 4644
    :try_start_0
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4645
    .local v1, "iter":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4646
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4647
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4648
    .local v3, "state":Ljava/lang/String;
    const-string v6, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enableDefaultPathDialog state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4649
    const-string v6, "mounted"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4650
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4653
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "state":Ljava/lang/String;
    :cond_1
    monitor-exit v5

    .line 4654
    if-le v2, v4, :cond_2

    :goto_1
    return v4

    .line 4653
    .end local v1    # "iter":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 4654
    .restart local v1    # "iter":Ljava/util/Iterator;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private enableDefaultToast()Z
    .locals 5

    .prologue
    .line 4662
    const/4 v1, 0x0

    .line 4663
    .local v1, "internal":Z
    iget-object v4, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4664
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    .line 4665
    .local v2, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4666
    const/4 v1, 0x1

    .line 4670
    .end local v2    # "volume":Landroid/os/storage/StorageVolume;
    :cond_1
    monitor-exit v4

    .line 4671
    return v1

    .line 4670
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private enableUSBFuction(Z)V
    .locals 7
    .param p1, "enable"    # Z

    .prologue
    .line 4258
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 4260
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "USB"

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    const-string v2, "enable"

    :goto_0
    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 4265
    :goto_1
    return-void

    .line 4260
    :cond_0
    const-string v2, "disable"
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4261
    :catch_0
    move-exception v1

    .line 4262
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 4263
    .local v0, "code":I
    const-string v2, "MountService"

    const-string v3, "enableUSBFunction failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getDefaultPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4621
    const-class v1, Lcom/mediatek/common/storage/IStorageManagerEx;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/storage/IStorageManagerEx;

    .line 4622
    .local v0, "sm":Lcom/mediatek/common/storage/IStorageManagerEx;
    invoke-interface {v0}, Lcom/mediatek/common/storage/IStorageManagerEx;->getDefaultPath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getPrimaryPhysicalVolume()Landroid/os/storage/StorageVolume;
    .locals 4

    .prologue
    .line 2478
    iget-object v3, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2479
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageVolume;

    .line 2480
    .local v1, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2481
    monitor-exit v3

    .line 2485
    .end local v1    # "volume":Landroid/os/storage/StorageVolume;
    :goto_0
    return-object v1

    .line 2484
    :cond_1
    monitor-exit v3

    .line 2485
    const/4 v1, 0x0

    goto :goto_0

    .line 2484
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getSwapState()Z
    .locals 3

    .prologue
    .line 4632
    const-class v1, Lcom/mediatek/common/storage/IStorageManagerEx;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/storage/IStorageManagerEx;

    .line 4633
    .local v0, "sm":Lcom/mediatek/common/storage/IStorageManagerEx;
    invoke-interface {v0}, Lcom/mediatek/common/storage/IStorageManagerEx;->getSdSwapState()Z

    move-result v1

    return v1
.end method

.method private getUMSPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4369
    sget-object v0, Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;

    return-object v0
.end method

.method private getUmsEnabling()Z
    .locals 2

    .prologue
    .line 2715
    iget-object v1, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2716
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/MountService;->mUmsEnabling:Z

    monitor-exit v1

    return v0

    .line 2717
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleSystemReady()V
    .locals 18

    .prologue
    .line 814
    const-string v13, "MountService"

    const-string v14, "handleSystemReady"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v14

    .line 817
    :try_start_0
    new-instance v9, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-direct {v9, v13}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 818
    .local v9, "snapshot":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 819
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/MountService;->mMountAll:Z

    .line 828
    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 829
    .local v4, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v1

    .line 830
    .local v1, "count":I
    new-array v13, v1, [Ljava/lang/String;

    invoke-interface {v4, v13}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 831
    .local v7, "rawPaths":[Ljava/lang/String;
    new-array v6, v1, [Ljava/lang/String;

    .line 832
    .local v6, "paths":[Ljava/lang/String;
    new-array v11, v1, [Ljava/lang/String;

    .line 834
    .local v11, "states":[Ljava/lang/String;
    move-object v6, v7

    .line 835
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 836
    aget-object v13, v6, v2

    invoke-virtual {v9, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    aput-object v13, v11, v2

    .line 835
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 818
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v4    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "paths":[Ljava/lang/String;
    .end local v7    # "rawPaths":[Ljava/lang/String;
    .end local v9    # "snapshot":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "states":[Ljava/lang/String;
    :catchall_0
    move-exception v13

    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v13

    .line 846
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v4    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v6    # "paths":[Ljava/lang/String;
    .restart local v7    # "rawPaths":[Ljava/lang/String;
    .restart local v9    # "snapshot":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11    # "states":[Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_6

    .line 847
    aget-object v5, v6, v2

    .line 848
    .local v5, "path":Ljava/lang/String;
    aget-object v10, v11, v2

    .line 850
    .local v10, "state":Ljava/lang/String;
    const-string v13, "unmounted"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 851
    sget-object v13, Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 852
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/MountService;->mSD1BootMounted:Z

    .line 853
    const-string v13, "MountService"

    const-string v14, "mSD1BootMounted = true"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v8

    .line 859
    .local v8, "rc":I
    if-eqz v8, :cond_2

    .line 860
    const-string v13, "MountService"

    const-string v14, "Boot-time mount failed (%d)"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->doSDSwapVolumeUpdate()V

    .line 865
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->sendSDSwapIntent()V

    .line 846
    .end local v8    # "rc":I
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 854
    :cond_4
    const-string v13, "/storage/sdcard1"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 855
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/MountService;->mSD2BootMounted:Z

    .line 856
    const-string v13, "MountService"

    const-string v14, "mSD2BootMounted = true"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 866
    :cond_5
    const-string v13, "shared"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 871
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x7

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v5, v14, v15}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_3

    .line 877
    .end local v5    # "path":Ljava/lang/String;
    .end local v10    # "state":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v14

    .line 878
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/storage/StorageVolume;

    .line 879
    .local v12, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v12}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 880
    const-string v13, "mounted"

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    goto :goto_4

    .line 883
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v12    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_1
    move-exception v13

    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v13

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_8
    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 889
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    if-eqz v13, :cond_9

    .line 890
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/MountService;->sendUmsIntent(Z)V

    .line 891
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    .line 896
    :cond_9
    new-instance v13, Lcom/android/server/MountService$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/server/MountService$1;-><init>(Lcom/android/server/MountService;)V

    invoke-virtual {v13}, Lcom/android/server/MountService$1;->start()V

    .line 902
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/MountService;->mSetDefaultEnable:Z

    .line 903
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/MountService;->mMountAll:Z

    .line 904
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/MountService;->mUnmountPrimary:Z

    .line 905
    return-void
.end method

.method private handleUserSwitch()V
    .locals 0

    .prologue
    .line 4716
    return-void
.end method

.method private isExternalStorage(Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 4509
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4510
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageVolume;

    .line 4511
    .local v0, "volume":Landroid/os/storage/StorageVolume;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4512
    if-nez v0, :cond_0

    .line 4513
    const-string v1, "MountService"

    const-string v2, "isExternalStorage error, invalid path!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4514
    const/4 v1, 0x0

    .line 4516
    :goto_0
    return v1

    .line 4511
    .end local v0    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 4516
    .restart local v0    # "volume":Landroid/os/storage/StorageVolume;
    :cond_0
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v1

    goto :goto_0
.end method

.method private isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callerUid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3317
    const/16 v3, 0x3e8

    if-ne p2, v3, :cond_1

    .line 3332
    :cond_0
    :goto_0
    return v1

    .line 3321
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 3322
    goto :goto_0

    .line 3325
    :cond_2
    iget-object v3, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {v3, p1, v4}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    .line 3332
    .local v0, "packageUid":I
    if-eq p2, v0, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private isVolumeRegistered(Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1814
    const/4 v1, 0x0

    .line 1815
    .local v1, "isVolumeRegistered":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1816
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1817
    const/4 v1, 0x1

    .line 1821
    :cond_0
    return v1

    .line 1815
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static maybeTranslatePathForVold(Ljava/lang/String;[Ljava/io/File;[Ljava/io/File;)Ljava/lang/String;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "appPaths"    # [Ljava/io/File;
    .param p2, "voldPaths"    # [Ljava/io/File;

    .prologue
    .line 3623
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_0

    .line 3624
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Paths must be 1:1 mapping"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3627
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 3628
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3629
    .local v0, "appPath":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3630
    new-instance v2, Ljava/io/File;

    aget-object v3, p2, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 3632
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3633
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3638
    .end local v0    # "appPath":Ljava/lang/String;
    .end local p0    # "path":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object p0

    .line 3627
    .restart local v0    # "appPath":Ljava/lang/String;
    .restart local p0    # "path":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3638
    .end local v0    # "appPath":Ljava/lang/String;
    :cond_3
    const/4 p0, 0x0

    goto :goto_1
.end method

.method private notifyShareAvailabilityChange(Z)V
    .locals 9
    .param p1, "avail"    # Z

    .prologue
    .line 2207
    iget-object v7, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 2208
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/MountService;->mUmsAvailable:Z

    .line 2209
    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 2210
    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$MountServiceBinderListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2212
    .local v0, "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    :try_start_1
    iget-object v6, v0, Lcom/android/server/MountService$MountServiceBinderListener;->mListener:Landroid/os/storage/IMountServiceListener;

    invoke-interface {v6, p1}, Landroid/os/storage/IMountServiceListener;->onUsbMassStorageConnectionChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2209
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2213
    :catch_0
    move-exception v4

    .line 2214
    .local v4, "rex":Landroid/os/RemoteException;
    :try_start_2
    const-string v6, "MountService"

    const-string v8, "Listener dead"

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2215
    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 2220
    .end local v0    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v2    # "i":I
    .end local v4    # "rex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 2216
    .restart local v0    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    .restart local v2    # "i":I
    :catch_1
    move-exception v1

    .line 2217
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_3
    const-string v6, "MountService"

    const-string v8, "Listener failed"

    invoke-static {v6, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2220
    .end local v0    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_0
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2222
    iget-boolean v6, p0, Lcom/android/server/MountService;->mSystemReady:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 2223
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->sendUmsIntent(Z)V

    .line 2228
    :goto_2
    if-nez p1, :cond_1

    .line 2232
    const/4 v3, 0x0

    .line 2233
    .local v3, "needTurnOff":Z
    iget-boolean v6, p0, Lcom/android/server/MountService;->mIsTurnOnOffUsb:Z

    if-eqz v6, :cond_3

    .line 2234
    const/4 v3, 0x1

    .line 2249
    :goto_3
    if-eqz v3, :cond_1

    .line 2250
    new-instance v6, Lcom/android/server/MountService$10;

    const-string v7, "MountService#AvailabilityChange"

    invoke-direct {v6, p0, v7}, Lcom/android/server/MountService$10;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/server/MountService$10;->start()V

    .line 2260
    .end local v3    # "needTurnOff":Z
    :cond_1
    return-void

    .line 2225
    :cond_2
    iput-boolean p1, p0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    goto :goto_2

    .line 2236
    .restart local v3    # "needTurnOff":Z
    :cond_3
    iget-object v7, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    monitor-enter v7

    .line 2237
    :try_start_4
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2238
    .local v5, "size":I
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v5, :cond_4

    .line 2239
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageVolume;

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "shared"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2240
    const/4 v3, 0x1

    .line 2244
    :cond_4
    monitor-exit v7

    goto :goto_3

    .end local v5    # "size":I
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v6

    .line 2238
    .restart local v5    # "size":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method private notifyVolumeChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 1877
    const-string v2, "MountService"

    const-string v3, "usbotg: mountservice notifyVolumeChange:disk bad removal"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1879
    :cond_0
    const-string v2, "MountService"

    const-string v3, "usbotg: mountservice notifyVolumeChange:invalid lable or invalid path"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    :goto_0
    return-void

    .line 1882
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    monitor-enter v15

    .line 1883
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    .line 1884
    const-string v2, "MountService"

    const-string v3, "usbotg: mountservice notifyVolumeChange:volumes is null... "

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    monitor-exit v15

    goto :goto_0

    .line 1902
    :catchall_0
    move-exception v2

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1887
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 1888
    .local v14, "size":I
    const/4 v13, 0x0

    .line 1889
    .local v13, "idx_incd":I
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "usbotg: mountservice notifyVolumeChange:before mVolumes size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    new-instance v1, Landroid/os/storage/StorageVolume;

    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v1 .. v11}, Landroid/os/storage/StorageVolume;-><init>(Ljava/io/File;IZZZIZJLandroid/os/UserHandle;)V

    .line 1891
    .local v1, "volume":Landroid/os/storage/StorageVolume;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    .line 1892
    const/4 v2, -0x1

    if-eq v13, v2, :cond_3

    .line 1893
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "usbotg: mountservice notifyVolumeChange:remove volume "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/MountService;->removeVolumeLocked(Landroid/os/storage/StorageVolume;)V

    .line 1898
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "usbotg: mountservice notifyVolumeChange:after mVolumes size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_4

    .line 1900
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    invoke-virtual {v2, v12}, Landroid/os/storage/StorageVolume;->setStorageId(I)V

    .line 1899
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1896
    .end local v12    # "i":I
    :cond_3
    monitor-exit v15

    goto/16 :goto_0

    .line 1902
    .restart local v12    # "i":I
    :cond_4
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private notifyVolumeChange(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 17
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "oldState"    # I
    .param p4, "newState"    # I

    .prologue
    .line 1826
    const-string v3, "MountService"

    const-string v4, "otg patition state change"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1828
    :cond_0
    const-string v3, "MountService"

    const-string v4, "usbotg: mountservice notifyVolumeChange:invalid lable or invalid path"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    :goto_0
    return-void

    .line 1832
    :cond_1
    move/from16 v0, p3

    move/from16 v1, p4

    if-ne v0, v1, :cond_2

    .line 1833
    const-string v3, "MountService"

    const-string v4, "usbotg: mountservice notifyVolumeChange:oldState=newState,don\'t care"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1836
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 1837
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    if-nez v3, :cond_3

    .line 1838
    const-string v3, "MountService"

    const-string v4, "usbotg: mountservice notifyVolumeChange: volumes is null... "

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    monitor-exit v16

    goto :goto_0

    .line 1871
    :catchall_0
    move-exception v3

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1841
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 1842
    .local v15, "size":I
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "usbotg: mountservice notifyVolumeChange:before mVolumes size is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    new-instance v2, Landroid/os/storage/StorageVolume;

    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Landroid/os/storage/StorageVolume;-><init>(Ljava/io/File;IZZZIZJLandroid/os/UserHandle;)V

    .line 1844
    .local v2, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/MountService;->isVolumeRegistered(Ljava/lang/String;)Z

    move-result v13

    .line 1845
    .local v13, "bPathIncluded":Z
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "usbotg: mountservice notifyVolumeChange:otg path is registered? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    if-nez p3, :cond_5

    const/4 v3, 0x1

    move/from16 v0, p4

    if-ne v0, v3, :cond_5

    .line 1847
    if-nez v13, :cond_4

    .line 1848
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "usbotg: mountservice notifyVolumeChange:add volume "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/MountService;->addVolumeLocked(Landroid/os/storage/StorageVolume;)V

    .line 1852
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "removed"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1854
    :cond_4
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "usbotg: mountservice notifyVolumeChange,Volume state is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    invoke-direct/range {p0 .. p4}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1867
    :goto_1
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "usbotg: mountservice notifyVolumeChange:after mVolumes size is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v14, v3, :cond_9

    .line 1869
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    invoke-virtual {v3, v14}, Landroid/os/storage/StorageVolume;->setStorageId(I)V

    .line 1868
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 1856
    .end local v14    # "i":I
    :cond_5
    const/4 v3, 0x1

    move/from16 v0, p3

    if-ne v0, v3, :cond_6

    const/4 v3, 0x3

    move/from16 v0, p4

    if-ne v0, v3, :cond_6

    .line 1857
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "usbotg: mountservice notifyVolumeChange,Volume state is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    invoke-direct/range {p0 .. p4}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_1

    .line 1859
    :cond_6
    const/4 v3, 0x4

    move/from16 v0, p4

    if-ne v0, v3, :cond_7

    .line 1860
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "usbotg: mountservice notifyVolumeChange,Volume state is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    invoke-direct/range {p0 .. p4}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_1

    .line 1862
    :cond_7
    const/4 v3, 0x5

    move/from16 v0, p3

    if-ne v0, v3, :cond_8

    const/4 v3, 0x1

    move/from16 v0, p4

    if-ne v0, v3, :cond_8

    .line 1863
    invoke-direct/range {p0 .. p4}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_1

    .line 1865
    :cond_8
    monitor-exit v16

    goto/16 :goto_0

    .line 1871
    .restart local v14    # "i":I
    :cond_9
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "oldState"    # I
    .param p4, "newState"    # I

    .prologue
    .line 1906
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 1907
    return-void
.end method

.method private notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 7
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "oldState"    # I
    .param p4, "newState"    # I
    .param p5, "bValue"    # Z

    .prologue
    const/4 v6, 0x7

    .line 1912
    iget-object v4, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1913
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    .line 1914
    .local v2, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {p0, p2}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1915
    .local v1, "state":Ljava/lang/String;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1917
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyVolumeStateChange::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bValue::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    const/4 v0, 0x0

    .line 1921
    .local v0, "action":Ljava/lang/String;
    if-ne p3, v6, :cond_0

    if-eq p4, p3, :cond_0

    .line 1922
    const-string v3, "MountService"

    const-string v4, "Sending ACTION_MEDIA_UNSHARED intent"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    const-string v3, "android.intent.action.MEDIA_UNSHARED"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-direct {p0, v3, v2, v4}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 1926
    :cond_0
    const/4 v3, -0x1

    if-ne p4, v3, :cond_3

    .line 1986
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 1987
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 1989
    :cond_2
    :goto_1
    return-void

    .line 1915
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "state":Ljava/lang/String;
    .end local v2    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1927
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "state":Ljava/lang/String;
    .restart local v2    # "volume":Landroid/os/storage/StorageVolume;
    :cond_3
    if-eqz p4, :cond_1

    .line 1929
    const/4 v3, 0x1

    if-ne p4, v3, :cond_5

    .line 1934
    const-string v3, "bad_removal"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "nofs"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "unmountable"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/android/server/MountService;->getUmsEnabling()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1938
    const-string v3, "MountService"

    const-string v4, "updating volume state for media bad removal nofs and unmountable"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    const-string v3, "unmounted"

    invoke-direct {p0, v2, v3, p1}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;Ljava/lang/String;)V

    .line 1940
    iget-boolean v3, p0, Lcom/android/server/MountService;->mSetDefaultEnable:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/MountService;->mIsTurnOnOffUsb:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/MountService;->mMountSwap:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/MountService;->mUnmountSwap:Z

    if-nez v3, :cond_4

    .line 1941
    const-string v3, "MountService"

    const-string v4, "updateDefaultpath VolumeState.Idle"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    invoke-direct {p0}, Lcom/android/server/MountService;->updateDefaultpath()V

    .line 1944
    :cond_4
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    goto :goto_0

    .line 1946
    :cond_5
    const/4 v3, 0x2

    if-eq p4, v3, :cond_1

    .line 1947
    const/4 v3, 0x3

    if-ne p4, v3, :cond_6

    .line 1948
    const-string v3, "MountService"

    const-string v4, "updating volume state checking"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    const-string v3, "checking"

    invoke-direct {p0, v2, v3}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1950
    const-string v0, "android.intent.action.MEDIA_CHECKING"

    goto :goto_0

    .line 1951
    :cond_6
    const/4 v3, 0x4

    if-ne p4, v3, :cond_9

    .line 1952
    const-string v3, "MountService"

    const-string v4, "updating volume state mounted"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    if-eqz p5, :cond_8

    .line 1954
    const-string v3, "MountService"

    const-string v4, "the filesystem of the mounted storage is FAT32. update maxFileSize to 4G"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    const-wide v3, 0xffffffffL

    invoke-virtual {v2, v3, v4}, Landroid/os/storage/StorageVolume;->setMaxFileSize(J)V

    .line 1960
    :goto_2
    const-string v3, "mounted"

    invoke-direct {p0, v2, v3, p1}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;Ljava/lang/String;)V

    .line 1961
    iget-boolean v3, p0, Lcom/android/server/MountService;->mSetDefaultEnable:Z

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/android/server/MountService;->mIsTurnOnOffUsb:Z

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lcom/android/server/MountService;->mMountSwap:Z

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lcom/android/server/MountService;->mUnmountSwap:Z

    if-nez v3, :cond_7

    .line 1962
    const-string v3, "MountService"

    const-string v4, "updateDefaultpath VolumeState.Mounted"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    invoke-direct {p0}, Lcom/android/server/MountService;->updateDefaultpath()V

    .line 1965
    :cond_7
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    goto/16 :goto_0

    .line 1957
    :cond_8
    const-string v3, "MountService"

    const-string v4, "the filesystem of the mounted storage is not FAT32. update maxFileSize to 0"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/storage/StorageVolume;->setMaxFileSize(J)V

    goto :goto_2

    .line 1966
    :cond_9
    const/4 v3, 0x5

    if-eq p4, v3, :cond_1

    .line 1968
    const/4 v3, 0x6

    if-eq p4, v3, :cond_1

    .line 1969
    if-ne p4, v6, :cond_a

    .line 1970
    const-string v3, "MountService"

    const-string v4, "Updating volume state media mounted"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    const-string v3, "unmounted"

    invoke-direct {p0, v2, v3, p1}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;Ljava/lang/String;)V

    .line 1973
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-direct {p0, v3, v2, v4}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 1975
    const-string v3, "MountService"

    const-string v4, "Updating media shared"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    const-string v3, "shared"

    invoke-direct {p0, v2, v3}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1977
    const-string v0, "android.intent.action.MEDIA_SHARED"

    .line 1978
    const-string v3, "MountService"

    const-string v4, "Sending ACTION_MEDIA_SHARED intent"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1979
    :cond_a
    const/16 v3, 0x8

    if-ne p4, v3, :cond_b

    .line 1980
    const-string v3, "MountService"

    const-string v4, "Live shared mounts not supported yet!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1983
    :cond_b
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unhandled VolumeState {"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private readStorageListLocked()V
    .locals 32

    .prologue
    .line 2308
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2312
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    .line 2314
    .local v24, "resources":Landroid/content/res/Resources;
    const v19, 0x10f0010

    .line 2315
    .local v19, "id":I
    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v22

    .line 2316
    .local v22, "parser":Landroid/content/res/XmlResourceParser;
    invoke-static/range {v22 .. v22}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v14

    .line 2319
    .local v14, "attrs":Landroid/util/AttributeSet;
    :try_start_0
    const-string v3, "StorageList"

    move-object/from16 v0, v22

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 2321
    :cond_0
    :goto_0
    invoke-static/range {v22 .. v22}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2323
    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v17

    .line 2324
    .local v17, "element":Ljava/lang/String;
    if-nez v17, :cond_2

    .line 2425
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/MountService;->isExternalStorageEmulated()Z

    move-result v3

    if-eqz v3, :cond_10

    const/16 v20, 0x1

    .line 2426
    .local v20, "index":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    .line 2427
    .local v2, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2428
    add-int/lit8 v21, v20, 0x1

    .end local v20    # "index":I
    .local v21, "index":I
    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/os/storage/StorageVolume;->setStorageId(I)V

    move/from16 v20, v21

    .end local v21    # "index":I
    .restart local v20    # "index":I
    goto :goto_2

    .line 2326
    .end local v2    # "volume":Landroid/os/storage/StorageVolume;
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v20    # "index":I
    :cond_2
    :try_start_1
    const-string v3, "storage"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2327
    sget-object v3, Lcom/android/internal/R$styleable;->Storage:[I

    move-object/from16 v0, v24

    invoke-virtual {v0, v14, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 2330
    .local v13, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 2332
    .local v23, "path":Ljava/lang/String;
    const/4 v3, 0x1

    const/4 v12, -0x1

    invoke-virtual {v13, v3, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 2334
    .local v4, "descriptionId":I
    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    .line 2336
    .local v15, "description":Ljava/lang/CharSequence;
    const/4 v3, 0x2

    const/4 v12, 0x0

    invoke-virtual {v13, v3, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 2338
    .local v5, "primary":Z
    const/4 v3, 0x3

    const/4 v12, 0x0

    invoke-virtual {v13, v3, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 2340
    .local v6, "removable":Z
    const/4 v3, 0x4

    const/4 v12, 0x0

    invoke-virtual {v13, v3, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 2346
    .local v7, "emulated":Z
    const/4 v8, 0x0

    .line 2347
    .local v8, "mtpReserve":I
    const/4 v3, 0x6

    const/4 v12, 0x0

    invoke-virtual {v13, v3, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    .line 2350
    .local v9, "allowMassStorage":Z
    const/4 v3, 0x7

    const/4 v12, 0x0

    invoke-virtual {v13, v3, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x400

    mul-long v28, v28, v30

    const-wide/16 v30, 0x400

    mul-long v10, v28, v30

    .line 2355
    .local v10, "maxFileSize":J
    if-eqz v5, :cond_3

    .line 2356
    const/16 v23, 0x0

    .line 2358
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 2359
    const/4 v5, 0x1

    .line 2360
    const/4 v6, 0x0

    .line 2361
    const/4 v7, 0x1

    .line 2362
    const/16 v8, 0xa

    .line 2365
    :cond_3
    const-string v3, "MountService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "got storage path: "

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v28, " description: "

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v28, " primary: "

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v28, " removable: "

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v28, " emulated: "

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v28, " mtpReserve: "

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v28, " allowMassStorage: "

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v28, " maxFileSize: "

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    if-eqz v7, :cond_7

    .line 2374
    new-instance v2, Landroid/os/storage/StorageVolume;

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Landroid/os/storage/StorageVolume;-><init>(Ljava/io/File;IZZZIZJLandroid/os/UserHandle;)V

    .end local v5    # "primary":Z
    .end local v6    # "removable":Z
    .end local v7    # "emulated":Z
    .end local v9    # "allowMassStorage":Z
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mEmulatedTemplate:Landroid/os/storage/StorageVolume;

    .line 2377
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v27

    .line 2378
    .local v27, "userManager":Lcom/android/server/pm/UserManagerService;
    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .restart local v18    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/pm/UserInfo;

    .line 2379
    .local v26, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v26 .. v26}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/MountService;->createEmulatedVolumeForUserLocked(Landroid/os/UserHandle;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 2418
    .end local v4    # "descriptionId":I
    .end local v8    # "mtpReserve":I
    .end local v10    # "maxFileSize":J
    .end local v13    # "a":Landroid/content/res/TypedArray;
    .end local v15    # "description":Ljava/lang/CharSequence;
    .end local v17    # "element":Ljava/lang/String;
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v23    # "path":Ljava/lang/String;
    .end local v26    # "user":Landroid/content/pm/UserInfo;
    .end local v27    # "userManager":Lcom/android/server/pm/UserManagerService;
    :catch_0
    move-exception v16

    .line 2419
    .local v16, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2425
    .end local v16    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/MountService;->isExternalStorageEmulated()Z

    move-result v12

    if-eqz v12, :cond_f

    const/16 v20, 0x1

    .line 2426
    .restart local v20    # "index":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .restart local v18    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    .line 2427
    .restart local v2    # "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v12

    if-nez v12, :cond_4

    .line 2428
    add-int/lit8 v21, v20, 0x1

    .end local v20    # "index":I
    .restart local v21    # "index":I
    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/os/storage/StorageVolume;->setStorageId(I)V

    move/from16 v20, v21

    .end local v21    # "index":I
    .restart local v20    # "index":I
    goto :goto_5

    .line 2382
    .end local v2    # "volume":Landroid/os/storage/StorageVolume;
    .end local v20    # "index":I
    .restart local v4    # "descriptionId":I
    .restart local v8    # "mtpReserve":I
    .restart local v10    # "maxFileSize":J
    .restart local v13    # "a":Landroid/content/res/TypedArray;
    .restart local v15    # "description":Ljava/lang/CharSequence;
    .restart local v17    # "element":Ljava/lang/String;
    .restart local v23    # "path":Ljava/lang/String;
    .restart local v27    # "userManager":Lcom/android/server/pm/UserManagerService;
    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumePrimary:Landroid/os/storage/StorageVolume;

    if-nez v3, :cond_9

    .line 2383
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_6
    :goto_6
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/os/storage/StorageVolume;

    .line 2384
    .local v25, "shareVolume":Landroid/os/storage/StorageVolume;
    invoke-virtual/range {v25 .. v25}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    sget-object v12, Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2385
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/MountService;->mVolumePrimary:Landroid/os/storage/StorageVolume;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    .line 2420
    .end local v4    # "descriptionId":I
    .end local v8    # "mtpReserve":I
    .end local v10    # "maxFileSize":J
    .end local v13    # "a":Landroid/content/res/TypedArray;
    .end local v15    # "description":Ljava/lang/CharSequence;
    .end local v17    # "element":Ljava/lang/String;
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v23    # "path":Ljava/lang/String;
    .end local v25    # "shareVolume":Landroid/os/storage/StorageVolume;
    .end local v27    # "userManager":Lcom/android/server/pm/UserManagerService;
    :catch_1
    move-exception v16

    .line 2421
    .local v16, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v3, Ljava/lang/RuntimeException;

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2391
    .end local v16    # "e":Ljava/io/IOException;
    .restart local v4    # "descriptionId":I
    .restart local v5    # "primary":Z
    .restart local v6    # "removable":Z
    .restart local v7    # "emulated":Z
    .restart local v8    # "mtpReserve":I
    .restart local v9    # "allowMassStorage":Z
    .restart local v10    # "maxFileSize":J
    .restart local v13    # "a":Landroid/content/res/TypedArray;
    .restart local v15    # "description":Ljava/lang/CharSequence;
    .restart local v17    # "element":Ljava/lang/String;
    .restart local v23    # "path":Ljava/lang/String;
    :cond_7
    if-eqz v23, :cond_8

    if-nez v15, :cond_a

    .line 2392
    :cond_8
    :try_start_5
    const-string v3, "MountService"

    const-string v12, "Missing storage path or description in readStorageList"

    invoke-static {v3, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2415
    .end local v5    # "primary":Z
    .end local v6    # "removable":Z
    .end local v7    # "emulated":Z
    .end local v9    # "allowMassStorage":Z
    :cond_9
    :goto_7
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0

    .line 2394
    .restart local v5    # "primary":Z
    .restart local v6    # "removable":Z
    .restart local v7    # "emulated":Z
    .restart local v9    # "allowMassStorage":Z
    :cond_a
    new-instance v2, Landroid/os/storage/StorageVolume;

    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v23

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Landroid/os/storage/StorageVolume;-><init>(Ljava/io/File;IZZZIZJLandroid/os/UserHandle;)V

    .line 2397
    .restart local v2    # "volume":Landroid/os/storage/StorageVolume;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/MountService;->addVolumeLocked(Landroid/os/storage/StorageVolume;)V

    .line 2400
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v12

    const-string v28, "unmounted"

    move-object/from16 v0, v28

    invoke-virtual {v3, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2401
    const-string v3, "unmounted"

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageVolume;->setState(Ljava/lang/String;)V

    .line 2403
    if-eqz v9, :cond_b

    .line 2404
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/MountService;->mIsAnyAllowUMS:Z

    .line 2407
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumePrimary:Landroid/os/storage/StorageVolume;

    if-nez v3, :cond_c

    sget-object v3, Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2408
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mVolumePrimary:Landroid/os/storage/StorageVolume;

    goto :goto_7

    .line 2409
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumeSecondary:Landroid/os/storage/StorageVolume;

    if-nez v3, :cond_9

    const-string v3, "/storage/sdcard1"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2410
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mVolumeSecondary:Landroid/os/storage/StorageVolume;
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_7

    .line 2431
    .end local v2    # "volume":Landroid/os/storage/StorageVolume;
    .end local v4    # "descriptionId":I
    .end local v5    # "primary":Z
    .end local v6    # "removable":Z
    .end local v7    # "emulated":Z
    .end local v8    # "mtpReserve":I
    .end local v9    # "allowMassStorage":Z
    .end local v10    # "maxFileSize":J
    .end local v13    # "a":Landroid/content/res/TypedArray;
    .end local v15    # "description":Ljava/lang/CharSequence;
    .end local v17    # "element":Ljava/lang/String;
    .end local v23    # "path":Ljava/lang/String;
    .restart local v18    # "i$":Ljava/util/Iterator;
    .restart local v20    # "index":I
    :cond_d
    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->close()V

    .line 2425
    throw v3

    .line 2431
    .restart local v17    # "element":Ljava/lang/String;
    :cond_e
    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->close()V

    .line 2433
    return-void

    .line 2425
    .end local v17    # "element":Ljava/lang/String;
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v20    # "index":I
    :cond_f
    const/16 v20, 0x0

    goto/16 :goto_4

    .restart local v17    # "element":Ljava/lang/String;
    :cond_10
    const/16 v20, 0x0

    goto/16 :goto_1
.end method

.method private removeObbStateLocked(Lcom/android/server/MountService$ObbState;)V
    .locals 4
    .param p1, "obbState"    # Lcom/android/server/MountService$ObbState;

    .prologue
    .line 3698
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3699
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 3700
    .local v1, "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    if-eqz v1, :cond_1

    .line 3701
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3702
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->unlink()V

    .line 3704
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3705
    iget-object v2, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3709
    :cond_1
    iget-object v2, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    iget-object v3, p1, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3710
    return-void
.end method

.method private removeVolumeLocked(Landroid/os/storage/StorageVolume;)V
    .locals 3
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 2471
    const-string v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeVolumeLocked() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2472
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2473
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2474
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2475
    return-void
.end method

.method private sendSDSwapIntent()V
    .locals 5

    .prologue
    .line 4488
    invoke-direct {p0}, Lcom/android/server/MountService;->getSwapState()Z

    move-result v1

    .line 4489
    .local v1, "sdSwapStatus":Z
    iget-boolean v2, p0, Lcom/android/server/MountService;->mFirstTimeSDSwapIntent:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/MountService;->mSwapStateForSDSwapIntent:Z

    if-eq v1, v2, :cond_1

    .line 4490
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/MountService;->mSwapStateForSDSwapIntent:Z

    .line 4497
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.mediatek.SD_SWAP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4498
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "SD_EXIST"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4499
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendSDSwapIntent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4500
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4501
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/MountService;->mFirstTimeSDSwapIntent:Z

    .line 4502
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 4493
    :cond_1
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendSDSwapIntent: already sent INTENT_SD_SWAP, Just skip this. status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "volume"    # Landroid/os/storage/StorageVolume;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2263
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2265
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/MountService;->mShutdownSD:Z

    if-eq v1, v3, :cond_1

    iget v1, p0, Lcom/android/server/MountService;->mUMSCount:I

    if-gtz v1, :cond_1

    :cond_0
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/MountService;->mMountAll:Z

    if-ne v1, v3, :cond_1

    .line 2271
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/MountService;->mSD1BootMounted:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/MountService;->mSD2BootMounted:Z

    if-eqz v1, :cond_3

    :cond_2
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2272
    iget-boolean v1, p0, Lcom/android/server/MountService;->mSD1BootMounted:Z

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2273
    iput-boolean v4, p0, Lcom/android/server/MountService;->mSD1BootMounted:Z

    .line 2274
    iget-boolean v1, p0, Lcom/android/server/MountService;->mBootCompleted:Z

    if-nez v1, :cond_3

    .line 2275
    const-string v1, "first_boot_mounted"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2276
    const-string v1, "MountService"

    const-string v2, "sendStorageIntent mSD1BootMounted"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2286
    :cond_3
    :goto_0
    const-string v1, "storage_volume"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2287
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendStorageIntent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2288
    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2289
    return-void

    .line 2278
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/MountService;->mSD2BootMounted:Z

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/storage/sdcard1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2279
    iput-boolean v4, p0, Lcom/android/server/MountService;->mSD2BootMounted:Z

    .line 2280
    iget-boolean v1, p0, Lcom/android/server/MountService;->mBootCompleted:Z

    if-nez v1, :cond_3

    .line 2281
    const-string v1, "first_boot_mounted"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2282
    const-string v1, "MountService"

    const-string v2, "sendStorageIntent mSD2BootMounted"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendUmsIntent(Z)V
    .locals 3
    .param p1, "c"    # Z

    .prologue
    .line 2292
    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string v0, "android.intent.action.UMS_CONNECTED"

    :goto_0
    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2295
    return-void

    .line 2292
    :cond_0
    const-string v0, "android.intent.action.UMS_DISCONNECTED"

    goto :goto_0
.end method

.method private setDefaultPath(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 4626
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDefaultPath "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4627
    const-class v1, Lcom/mediatek/common/storage/IStorageManagerEx;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/storage/IStorageManagerEx;

    .line 4628
    .local v0, "sm":Lcom/mediatek/common/storage/IStorageManagerEx;
    invoke-interface {v0, p1}, Lcom/mediatek/common/storage/IStorageManagerEx;->setDefaultPath(Ljava/lang/String;)V

    .line 4629
    return-void
.end method

.method private setUmsEnabling(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 2721
    iget-object v1, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2722
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/MountService;->mUmsEnabling:Z

    .line 2723
    monitor-exit v1

    .line 2724
    return-void

    .line 2723
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateDefaultPathForSwap(ZLjava/lang/String;)V
    .locals 2
    .param p1, "mount"    # Z
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 4591
    if-eqz p1, :cond_1

    const-string v1, "/storage/sdcard1"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4598
    const-string v1, "/storage/sdcard1"

    invoke-direct {p0, v1}, Lcom/android/server/MountService;->setDefaultPath(Ljava/lang/String;)V

    .line 4618
    :cond_0
    :goto_0
    return-void

    .line 4599
    :cond_1
    if-nez p1, :cond_0

    .line 4601
    invoke-direct {p0}, Lcom/android/server/MountService;->getDefaultPath()Ljava/lang/String;

    move-result-object v0

    .line 4602
    .local v0, "defaultPath":Ljava/lang/String;
    sget-object v1, Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4609
    const-string v1, "/storage/sdcard1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4615
    sget-object v1, Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/MountService;->setDefaultPath(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateDefaultpath()V
    .locals 8

    .prologue
    .line 4234
    invoke-direct {p0}, Lcom/android/server/MountService;->getDefaultPath()Ljava/lang/String;

    move-result-object v0

    .line 4235
    .local v0, "defaultPath":Ljava/lang/String;
    move-object v4, v0

    .line 4236
    .local v4, "path":Ljava/lang/String;
    const/4 v3, 0x0

    .line 4237
    .local v3, "needChange":Z
    const-string v5, "mounted"

    invoke-virtual {p0, v0}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 4238
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    monitor-enter v6

    .line 4239
    :try_start_0
    iget-object v5, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4240
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 4241
    iget-object v5, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageVolume;

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 4242
    const-string v5, "mounted"

    invoke-virtual {p0, v4}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4243
    const/4 v3, 0x1

    .line 4247
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4248
    if-eqz v3, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 4249
    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setDefaultPath: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4250
    invoke-direct {p0, v4}, Lcom/android/server/MountService;->setDefaultPath(Ljava/lang/String;)V

    .line 4253
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_1
    return-void

    .line 4240
    .restart local v1    # "i":I
    .restart local v2    # "length":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4247
    .end local v1    # "i":I
    .end local v2    # "length":I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method private updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    .locals 1
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;
    .param p2, "state"    # Ljava/lang/String;

    .prologue
    .line 1296
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    return-void
.end method

.method private updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;
    .param p2, "state"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1300
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 1302
    .local v4, "path":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1303
    :try_start_0
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v6, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1304
    .local v3, "oldState":Ljava/lang/String;
    invoke-virtual {p1, p2}, Landroid/os/storage/StorageVolume;->setState(Ljava/lang/String;)V

    .line 1305
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1307
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1308
    const-string v6, "MountService"

    const-string v7, "Duplicate state transition (%s -> %s) for %s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p2, v8, v9

    aput-object p2, v8, v10

    const/4 v9, 0x2

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    :goto_0
    return-void

    .line 1305
    .end local v3    # "oldState":Ljava/lang/String;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 1313
    .restart local v3    # "oldState":Ljava/lang/String;
    :cond_0
    const-string v6, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "volume state changed for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    sget-object v6, Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1331
    const-string v6, "sdcard1"

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1333
    const-string v6, "unmounted"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1334
    iget-object v6, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6, v9, v9}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    .line 1341
    iget-object v6, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v7, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    const/4 v8, 0x5

    invoke-virtual {v7, v8, v4}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1348
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 1349
    :try_start_2
    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "i":I
    :goto_2
    if-ltz v2, :cond_3

    .line 1350
    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$MountServiceBinderListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1352
    .local v0, "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    :try_start_3
    iget-object v6, v0, Lcom/android/server/MountService$MountServiceBinderListener;->mListener:Landroid/os/storage/IMountServiceListener;

    invoke-interface {v6, v4, v3, p2}, Landroid/os/storage/IMountServiceListener;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1349
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1343
    .end local v0    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v2    # "i":I
    :cond_2
    const-string v6, "mounted"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1344
    iget-object v6, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6, v10, v9}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    goto :goto_1

    .line 1353
    .restart local v0    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    .restart local v2    # "i":I
    :catch_0
    move-exception v5

    .line 1354
    .local v5, "rex":Landroid/os/RemoteException;
    :try_start_4
    const-string v6, "MountService"

    const-string v8, "Listener dead"

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 1360
    .end local v0    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v2    # "i":I
    .end local v5    # "rex":Landroid/os/RemoteException;
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v6

    .line 1356
    .restart local v0    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    .restart local v2    # "i":I
    :catch_1
    move-exception v1

    .line 1357
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_5
    const-string v6, "MountService"

    const-string v8, "Listener failed"

    invoke-static {v6, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1360
    .end local v0    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_3
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_0
.end method

.method private validatePermission(Ljava/lang/String;)V
    .locals 4
    .param p1, "perm"    # Ljava/lang/String;

    .prologue
    .line 2298
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2299
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires %s permission"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2301
    :cond_0
    return-void
.end method

.method private waitForLatch(Ljava/util/concurrent/CountDownLatch;)V
    .locals 4
    .param p1, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    .line 799
    :goto_0
    const-wide/16 v1, 0x1388

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 800
    return-void

    .line 802
    :cond_0
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " still waiting for MountService ready..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 805
    :catch_0
    move-exception v0

    .line 806
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "MountService"

    const-string v2, "Interrupt while waiting for MountService to be ready."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private waitForReady()V
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;)V

    .line 794
    return-void
.end method

.method private warnOnNotMounted()V
    .locals 4

    .prologue
    .line 3030
    invoke-direct {p0}, Lcom/android/server/MountService;->getPrimaryPhysicalVolume()Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 3031
    .local v1, "primary":Landroid/os/storage/StorageVolume;
    if-eqz v1, :cond_0

    .line 3032
    const/4 v0, 0x0

    .line 3034
    .local v0, "mounted":Z
    :try_start_0
    const-string v2, "mounted"

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3038
    :goto_0
    if-nez v0, :cond_0

    .line 3039
    const-string v2, "MountService"

    const-string v3, "getSecureContainerList() called when storage not mounted"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3042
    .end local v0    # "mounted":Z
    :cond_0
    return-void

    .line 3035
    .restart local v0    # "mounted":Z
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public changeEncryptionPassword(Ljava/lang/String;)I
    .locals 7
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 3501
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3502
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "password cannot be empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3505
    :cond_0
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3508
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3511
    const-string v2, "MountService"

    const-string v3, "changing encryption password..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3516
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "changepw"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v6, p1}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 3517
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 3520
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_0
    return v2

    .line 3518
    :catch_0
    move-exception v0

    .line 3520
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v2

    goto :goto_0
.end method

.method public createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)I
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "sizeMb"    # I
    .param p3, "fstype"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "ownerUid"    # I
    .param p6, "external"    # Z

    .prologue
    .line 3059
    sget-object v2, Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3061
    if-eqz p6, :cond_1

    invoke-direct {p0}, Lcom/android/server/MountService;->getSwapState()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3062
    const-string v2, "MountService"

    const-string v3, "External SD not exist, and PMS want to create ASEC in SD (APP2SD). For SWAP feature, make createSecureContainer() fail!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3063
    const/4 v1, -0x1

    .line 3084
    :cond_0
    :goto_0
    return v1

    .line 3067
    :cond_1
    const-string v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 3068
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3069
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 3071
    const/4 v1, 0x0

    .line 3073
    .local v1, "rc":I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "asec"

    const/4 v2, 0x7

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v6, "create"

    aput-object v6, v5, v2

    const/4 v2, 0x1

    aput-object p1, v5, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x3

    aput-object p3, v5, v2

    const/4 v2, 0x4

    new-instance v6, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v6, p4}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v6, v5, v2

    const/4 v2, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x6

    if-eqz p6, :cond_2

    const-string v2, "1"

    :goto_1
    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3079
    :goto_2
    if-nez v1, :cond_0

    .line 3080
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v3

    .line 3081
    :try_start_1
    iget-object v2, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3082
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 3073
    :cond_2
    :try_start_2
    const-string v2, "0"
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 3075
    :catch_0
    move-exception v0

    .line 3076
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_2
.end method

.method public decryptStorage(Ljava/lang/String;)I
    .locals 8
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 3437
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3438
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "password cannot be empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3441
    :cond_0
    iget-object v3, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.CRYPT_KEEPER"

    const-string v5, "no permission to access the crypt keeper"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3444
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3447
    const-string v3, "MountService"

    const-string v4, "decrypting storage..."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3452
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "cryptfs"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "checkpw"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v7, p1}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 3454
    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3455
    .local v0, "code":I
    if-nez v0, :cond_1

    .line 3458
    iget-object v3, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/MountService$12;

    invoke-direct {v4, p0}, Lcom/android/server/MountService$12;-><init>(Lcom/android/server/MountService;)V

    const-wide/16 v5, 0xbb8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3472
    .end local v0    # "code":I
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :cond_1
    :goto_0
    return v0

    .line 3470
    :catch_0
    move-exception v1

    .line 3472
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    goto :goto_0
.end method

.method public destroySecureContainer(Ljava/lang/String;Z)I
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .prologue
    .line 3122
    const-string v4, "android.permission.ASEC_DESTROY"

    invoke-direct {p0, v4}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 3123
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3124
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 3132
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    .line 3133
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 3135
    const/4 v3, 0x0

    .line 3137
    .local v3, "rc":I
    :try_start_0
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v4, "asec"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "destroy"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-direct {v0, v4, v5}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3138
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    if-eqz p2, :cond_0

    .line 3139
    const-string v4, "force"

    invoke-virtual {v0, v4}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 3141
    :cond_0
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3151
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :goto_0
    if-nez v3, :cond_2

    .line 3152
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5

    .line 3153
    :try_start_1
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3154
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 3156
    :cond_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3159
    :cond_2
    return v3

    .line 3142
    :catch_0
    move-exception v2

    .line 3143
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 3144
    .local v1, "code":I
    const/16 v4, 0x195

    if-ne v1, v4, :cond_3

    .line 3145
    const/4 v3, -0x7

    goto :goto_0

    .line 3147
    :cond_3
    const/4 v3, -0x1

    goto :goto_0

    .line 3156
    .end local v1    # "code":I
    .end local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 14
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 4171
    iget-object v10, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.DUMP"

    const-string v12, "MountService"

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4173
    new-instance v8, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v10, "  "

    const/16 v11, 0xa0

    move-object/from16 v0, p2

    invoke-direct {v8, v0, v10, v11}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 4175
    .local v8, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v11, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    monitor-enter v11

    .line 4176
    :try_start_0
    const-string v10, "mObbMounts:"

    invoke-virtual {v8, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4177
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 4178
    iget-object v10, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4180
    .local v1, "binders":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 4181
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4182
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ":"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4183
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 4184
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 4185
    .local v7, "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/MountService$ObbState;

    .line 4186
    .local v6, "obbState":Lcom/android/server/MountService$ObbState;
    invoke-virtual {v8, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_1

    .line 4203
    .end local v1    # "binders":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "obbState":Lcom/android/server/MountService$ObbState;
    .end local v7    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 4188
    .restart local v1    # "binders":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    .restart local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v7    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    :cond_0
    :try_start_1
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto :goto_0

    .line 4190
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    :cond_1
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 4192
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4193
    const-string v10, "mObbPathToStateMap:"

    invoke-virtual {v8, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4194
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 4195
    iget-object v10, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 4196
    .local v5, "maps":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;>;"
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 4197
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 4198
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4199
    const-string v10, " -> "

    invoke-virtual {v8, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4200
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_2

    .line 4202
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;"
    :cond_2
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 4203
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4205
    iget-object v11, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v11

    .line 4206
    :try_start_2
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4207
    const-string v10, "mVolumes:"

    invoke-virtual {v8, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4208
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 4209
    iget-object v10, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/storage/StorageVolume;

    .line 4210
    .local v9, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v8, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 4211
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 4212
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Current state: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v10, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4213
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto :goto_3

    .line 4216
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v9    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_1
    move-exception v10

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v10

    .line 4215
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_3
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 4216
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4218
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4219
    const-string v10, "mConnection:"

    invoke-virtual {v8, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4220
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 4221
    iget-object v10, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    move-object/from16 v0, p3

    invoke-virtual {v10, p1, v8, v0}, Lcom/android/server/NativeDaemonConnector;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4222
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 4223
    return-void
.end method

.method public encryptStorage(Ljava/lang/String;)I
    .locals 7
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 3477
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3478
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "password cannot be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3481
    :cond_0
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3484
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3487
    const-string v2, "MountService"

    const-string v3, "encrypting storage..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3491
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "enablecrypto"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "inplace"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v6, p1}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3497
    :goto_0
    return v1

    .line 3492
    :catch_0
    move-exception v0

    .line 3494
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    goto :goto_0
.end method

.method public finalizeSecureContainer(Ljava/lang/String;)I
    .locals 7
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 3088
    const-string v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 3089
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 3091
    const/4 v1, 0x0

    .line 3093
    .local v1, "rc":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "asec"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "finalize"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3101
    :goto_0
    return v1

    .line 3098
    :catch_0
    move-exception v0

    .line 3099
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public finishMediaUpdate()V
    .locals 2

    .prologue
    .line 3313
    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3314
    return-void
.end method

.method public fixPermissionsSecureContainer(Ljava/lang/String;ILjava/lang/String;)I
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "gid"    # I
    .param p3, "filename"    # Ljava/lang/String;

    .prologue
    .line 3105
    const-string v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 3106
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 3108
    const/4 v1, 0x0

    .line 3110
    .local v1, "rc":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "asec"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "fixperms"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p3, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3118
    :goto_0
    return v1

    .line 3115
    :catch_0
    move-exception v0

    .line 3116
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public formatVolume(Ljava/lang/String;)I
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 2997
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2998
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3000
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doFormatVolume(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getEncryptionState()I
    .locals 8

    .prologue
    const/4 v2, -0x1

    .line 3415
    iget-object v3, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.CRYPT_KEEPER"

    const-string v5, "no permission to access the crypt keeper"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3418
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3422
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "cryptfs"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "cryptocomplete"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 3423
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 3431
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_0
    return v2

    .line 3424
    :catch_0
    move-exception v0

    .line 3426
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "MountService"

    const-string v4, "Unable to parse result from cryptfs cryptocomplete"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3428
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 3430
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v3, "MountService"

    const-string v4, "Error in communicating with cryptfs in validating"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "rawPath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 3336
    const-string v5, "rawPath cannot be null"

    invoke-static {p1, v5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3338
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3339
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 3342
    iget-object v5, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    monitor-enter v5

    .line 3343
    :try_start_0
    iget-object v6, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/MountService$ObbState;

    .line 3344
    .local v3, "state":Lcom/android/server/MountService$ObbState;
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3345
    if-nez v3, :cond_1

    .line 3346
    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to find OBB mounted at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3358
    :cond_0
    :goto_0
    return-object v4

    .line 3344
    .end local v3    # "state":Lcom/android/server/MountService$ObbState;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 3352
    .restart local v3    # "state":Lcom/android/server/MountService$ObbState;
    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v6, "obb"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "path"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, v3, Lcom/android/server/MountService$ObbState;->voldPath:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 3353
    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v5, 0xd3

    invoke-virtual {v2, v5}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 3354
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v4

    goto :goto_0

    .line 3355
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v1

    .line 3356
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 3357
    .local v0, "code":I
    const/16 v5, 0x196

    if-eq v0, v5, :cond_0

    .line 3360
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unexpected response code %d"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getSecureContainerFilesystemPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3292
    const-string v3, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 3293
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3294
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 3298
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "asec"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "fspath"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 3299
    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v3, 0xd3

    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 3300
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 3305
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_0
    return-object v3

    .line 3301
    :catch_0
    move-exception v1

    .line 3302
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 3303
    .local v0, "code":I
    const/16 v3, 0x196

    if-ne v0, v3, :cond_0

    .line 3304
    const-string v3, "MountService"

    const-string v4, "Container \'%s\' not found"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p1, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3305
    const/4 v3, 0x0

    goto :goto_0

    .line 3307
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unexpected response code %d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getSecureContainerList()[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3045
    const-string v1, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v1}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 3046
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3047
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 3050
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "asec"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "list"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    const/16 v2, 0x6f

    invoke-static {v1, v2}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3053
    :goto_0
    return-object v1

    .line 3052
    :catch_0
    move-exception v0

    .line 3053
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    new-array v1, v6, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3271
    const-string v3, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 3272
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3273
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 3277
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "asec"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "path"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 3278
    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v3, 0xd3

    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 3279
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 3284
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_0
    return-object v3

    .line 3280
    :catch_0
    move-exception v1

    .line 3281
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 3282
    .local v0, "code":I
    const/16 v3, 0x196

    if-ne v0, v3, :cond_0

    .line 3283
    const-string v3, "MountService"

    const-string v4, "Container \'%s\' not found"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p1, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3284
    const/4 v3, 0x0

    goto :goto_0

    .line 3286
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unexpected response code %d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getStorageUsers(Ljava/lang/String;)[I
    .locals 12
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 3004
    const-string v6, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v6}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 3005
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3007
    :try_start_0
    iget-object v6, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v7, "storage"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "users"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v6

    const/16 v7, 0x70

    invoke-static {v6, v7}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v4

    .line 3012
    .local v4, "r":[Ljava/lang/String;
    array-length v6, v4

    new-array v0, v6, [I

    .line 3013
    .local v0, "data":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v4

    if-ge v2, v6, :cond_0

    .line 3014
    aget-object v6, v4, v2

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 3016
    .local v5, "tok":[Ljava/lang/String;
    const/4 v6, 0x0

    :try_start_1
    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v0, v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3013
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3017
    :catch_0
    move-exception v3

    .line 3018
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    :try_start_2
    const-string v6, "MountService"

    const-string v7, "Error parsing pid %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-object v10, v5, v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3019
    const/4 v6, 0x0

    new-array v0, v6, [I
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3025
    .end local v0    # "data":[I
    .end local v2    # "i":I
    .end local v3    # "nfe":Ljava/lang/NumberFormatException;
    .end local v4    # "r":[Ljava/lang/String;
    .end local v5    # "tok":[Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v0

    .line 3023
    :catch_1
    move-exception v1

    .line 3024
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v6, "MountService"

    const-string v7, "Failed to retrieve storage users list"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3025
    new-array v0, v11, [I

    goto :goto_1
.end method

.method public getVolumeList()[Landroid/os/storage/StorageVolume;
    .locals 13

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 3643
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 3644
    .local v1, "callingUserId":I
    iget-object v9, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.ACCESS_ALL_EXTERNAL_STORAGE"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v9

    if-nez v9, :cond_3

    move v0, v7

    .line 3648
    .local v0, "accessAll":Z
    :goto_0
    iget-object v9, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v9

    .line 3649
    :try_start_0
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 3650
    .local v2, "filtered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    iget-object v10, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageVolume;

    .line 3651
    .local v6, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object v4

    .line 3652
    .local v4, "owner":Landroid/os/UserHandle;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    if-ne v10, v1, :cond_4

    :cond_1
    move v5, v7

    .line 3653
    .local v5, "ownerMatch":Z
    :goto_2
    if-nez v0, :cond_2

    if-eqz v5, :cond_0

    .line 3654
    :cond_2
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3658
    .end local v2    # "filtered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "owner":Landroid/os/UserHandle;
    .end local v5    # "ownerMatch":Z
    .end local v6    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_0
    move-exception v7

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .end local v0    # "accessAll":Z
    :cond_3
    move v0, v8

    .line 3644
    goto :goto_0

    .restart local v0    # "accessAll":Z
    .restart local v2    # "filtered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "owner":Landroid/os/UserHandle;
    .restart local v6    # "volume":Landroid/os/storage/StorageVolume;
    :cond_4
    move v5, v8

    .line 3652
    goto :goto_2

    .line 3657
    .end local v4    # "owner":Landroid/os/UserHandle;
    .end local v6    # "volume":Landroid/os/storage/StorageVolume;
    :cond_5
    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Landroid/os/storage/StorageVolume;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/os/storage/StorageVolume;

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v7
.end method

.method public getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "mountPoint"    # Ljava/lang/String;

    .prologue
    .line 2867
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2868
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2869
    .local v0, "state":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2870
    const-string v1, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVolumeState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): Unknown volume"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2871
    const-string v1, "vold.encrypt_progress"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 2872
    const-string v0, "removed"

    .line 2880
    :cond_0
    :goto_0
    monitor-exit v2

    return-object v0

    .line 2875
    :cond_1
    const-string v1, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVolumeState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): ERROR!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2876
    const-string v0, "unknown"

    goto :goto_0

    .line 2881
    .end local v0    # "state":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isExternalStorageEmulated()Z
    .locals 1

    .prologue
    .line 2886
    iget-object v0, p0, Lcom/android/server/MountService;->mEmulatedTemplate:Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isObbMounted(Ljava/lang/String;)Z
    .locals 2
    .param p1, "rawPath"    # Ljava/lang/String;

    .prologue
    .line 3367
    const-string v0, "rawPath cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3368
    iget-object v1, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    monitor-enter v1

    .line 3369
    :try_start_0
    iget-object v0, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 3370
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isSecureContainerMounted(Ljava/lang/String;)Z
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 3236
    const-string v0, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 3237
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3238
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 3240
    iget-object v1, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v1

    .line 3241
    :try_start_0
    iget-object v0, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 3242
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isUsbMassStorageConnected()Z
    .locals 2

    .prologue
    .line 2727
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2729
    invoke-direct {p0}, Lcom/android/server/MountService;->getUmsEnabling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2730
    const/4 v0, 0x1

    .line 2733
    :goto_0
    return v0

    .line 2732
    :cond_0
    iget-object v1, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2733
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/MountService;->mUmsAvailable:Z

    monitor-exit v1

    goto :goto_0

    .line 2734
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isUsbMassStorageEnabled()Z
    .locals 6

    .prologue
    .line 2838
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2844
    iget-object v4, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2845
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2846
    .local v0, "count":I
    new-array v2, v0, [Ljava/lang/String;

    .line 2847
    .local v2, "paths":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2848
    iget-object v3, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 2847
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2850
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2852
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 2853
    aget-object v3, v2, v1

    const-string v4, "ums"

    invoke-direct {p0, v3, v4}, Lcom/android/server/MountService;->doGetVolumeShared(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2854
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isUsbMassStorageEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " true"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2855
    const/4 v3, 0x1

    .line 2860
    :goto_2
    return v3

    .line 2850
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "paths":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 2852
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v2    # "paths":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2859
    :cond_2
    const-string v3, "MountService"

    const-string v4, "isUsbMassStorageEnabled: false"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2860
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public mkdirs(Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "appPath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 3560
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 3561
    .local v3, "userId":I
    new-instance v2, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v2, v3}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 3564
    .local v2, "userEnv":Landroid/os/Environment$UserEnvironment;
    iget-object v6, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v7, "appops"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 3566
    .local v0, "appOps":Landroid/app/AppOpsManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v0, v6, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 3569
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 3575
    const-string v6, "/"

    invoke-virtual {p2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 3576
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3581
    :cond_0
    invoke-virtual {v2, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppDataDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v6

    invoke-virtual {v2, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppDataDirsForVold(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v7

    invoke-static {p2, v6, v7}, Lcom/android/server/MountService;->maybeTranslatePathForVold(Ljava/lang/String;[Ljava/io/File;[Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 3584
    .local v4, "voldPath":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 3586
    :try_start_1
    iget-object v6, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v7, "volume"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "mkdirs"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3601
    .end local v4    # "voldPath":Ljava/lang/String;
    :goto_0
    return v5

    .line 3570
    :catch_0
    move-exception v1

    .line 3571
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to resolve "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3572
    const/4 v5, -0x1

    goto :goto_0

    .line 3588
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "voldPath":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 3589
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v5

    goto :goto_0

    .line 3593
    .end local v1    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :cond_1
    invoke-virtual {v2, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v6

    invoke-virtual {v2, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirsForVold(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v7

    invoke-static {p2, v6, v7}, Lcom/android/server/MountService;->maybeTranslatePathForVold(Ljava/lang/String;[Ljava/io/File;[Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 3596
    if-eqz v4, :cond_2

    .line 3598
    :try_start_2
    iget-object v6, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v7, "volume"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "mkdirs"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 3600
    :catch_2
    move-exception v1

    .line 3601
    .restart local v1    # "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v5

    goto :goto_0

    .line 3605
    .end local v1    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :cond_2
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid mkdirs path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public monitor()V
    .locals 1

    .prologue
    .line 4227
    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    if-eqz v0, :cond_0

    .line 4228
    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnector;->monitor()V

    .line 4230
    :cond_0
    return-void
.end method

.method public mountObb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;I)V
    .locals 8
    .param p1, "rawPath"    # Ljava/lang/String;
    .param p2, "canonicalPath"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "token"    # Landroid/os/storage/IObbActionListener;
    .param p5, "nonce"    # I

    .prologue
    .line 3376
    const-string v1, "rawPath cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3377
    const-string v1, "canonicalPath cannot be null"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3378
    const-string v1, "token cannot be null"

    invoke-static {p4, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3380
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 3381
    .local v4, "callingUid":I
    new-instance v0, Lcom/android/server/MountService$ObbState;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/MountService$ObbState;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;I)V

    .line 3382
    .local v0, "obbState":Lcom/android/server/MountService$ObbState;
    new-instance v7, Lcom/android/server/MountService$MountObbAction;

    invoke-direct {v7, p0, v0, p3, v4}, Lcom/android/server/MountService$MountObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Ljava/lang/String;I)V

    .line 3383
    .local v7, "action":Lcom/android/server/MountService$ObbAction;
    iget-object v1, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v2, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v7}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3387
    return-void
.end method

.method public mountSecureContainer(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "ownerUid"    # I

    .prologue
    .line 3163
    const-string v3, "android.permission.ASEC_MOUNT_UNMOUNT"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 3164
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3165
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 3167
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v4

    .line 3168
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3169
    const/4 v2, -0x6

    monitor-exit v4

    .line 3188
    :cond_0
    :goto_0
    return v2

    .line 3171
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3173
    const/4 v2, 0x0

    .line 3175
    .local v2, "rc":I
    :try_start_1
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "asec"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "mount"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v7, p2}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3183
    :cond_2
    :goto_1
    if-nez v2, :cond_0

    .line 3184
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v4

    .line 3185
    :try_start_2
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3186
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 3171
    .end local v2    # "rc":I
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 3176
    .restart local v2    # "rc":I
    :catch_0
    move-exception v1

    .line 3177
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 3178
    .local v0, "code":I
    const/16 v3, 0x195

    if-eq v0, v3, :cond_2

    .line 3179
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public mountVolume(Ljava/lang/String;)I
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 2890
    const-string v3, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2892
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->isExternalStorage(Ljava/lang/String;)Z

    move-result v0

    .line 2893
    .local v0, "isExternal":Z
    if-eqz v0, :cond_0

    sget-object v3, Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2894
    iput-boolean v6, p0, Lcom/android/server/MountService;->mMountSwap:Z

    .line 2896
    iget-object v4, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2897
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    sget-object v5, Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    .line 2898
    .local v2, "volume":Landroid/os/storage/StorageVolume;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2899
    const-string v3, "android.intent.action.MEDIA_EJECT"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-direct {p0, v3, v2, v4}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 2900
    const-wide/16 v3, 0x5dc

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 2901
    invoke-direct {p0, v6, p1}, Lcom/android/server/MountService;->updateDefaultPathForSwap(ZLjava/lang/String;)V

    .line 2904
    .end local v2    # "volume":Landroid/os/storage/StorageVolume;
    :cond_0
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2905
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v1

    .line 2908
    .local v1, "ret":I
    iget-boolean v3, p0, Lcom/android/server/MountService;->mMountSwap:Z

    if-eqz v3, :cond_2

    if-nez v1, :cond_2

    .line 2910
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/MountService;->mMountSwap:Z

    .line 2911
    invoke-direct {p0}, Lcom/android/server/MountService;->doSDSwapVolumeUpdate()V

    .line 2912
    invoke-direct {p0}, Lcom/android/server/MountService;->updateDefaultpath()V

    .line 2913
    invoke-direct {p0}, Lcom/android/server/MountService;->sendSDSwapIntent()V

    .line 2922
    :cond_1
    :goto_0
    return v1

    .line 2898
    .end local v1    # "ret":I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 2914
    .restart local v1    # "ret":I
    :cond_2
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 2916
    invoke-direct {p0}, Lcom/android/server/MountService;->doSDSwapVolumeUpdate()V

    .line 2917
    invoke-direct {p0}, Lcom/android/server/MountService;->updateDefaultpath()V

    .line 2918
    invoke-direct {p0}, Lcom/android/server/MountService;->sendSDSwapIntent()V

    goto :goto_0
.end method

.method public mountVolumeNotSwap(Ljava/lang/String;)I
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 4575
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 4577
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 4578
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onDaemonConnected()V
    .locals 2

    .prologue
    .line 1371
    new-instance v0, Lcom/android/server/MountService$8;

    const-string v1, "MountService#onDaemonConnected"

    invoke-direct {v0, p0, v1}, Lcom/android/server/MountService$8;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/MountService$8;->start()V

    .line 1500
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 31
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    .prologue
    .line 1507
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1508
    .local v11, "builder":Ljava/lang/StringBuilder;
    const-string v3, "onEvent::"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1509
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " raw= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1510
    if-eqz p3, :cond_0

    .line 1511
    const-string v3, " cooked = "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1512
    move-object/from16 v10, p3

    .local v10, "arr$":[Ljava/lang/String;
    array-length v0, v10

    move/from16 v19, v0

    .local v19, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    aget-object v26, v10, v16

    .line 1513
    .local v26, "str":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1512
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 1516
    .end local v10    # "arr$":[Ljava/lang/String;
    .end local v16    # "i$":I
    .end local v19    # "len$":I
    .end local v26    # "str":Ljava/lang/String;
    :cond_0
    const-string v3, "MountService"

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    const/16 v3, 0x25d

    move/from16 v0, p1

    if-ne v0, v3, :cond_3

    .line 1540
    const/4 v8, 0x0

    .line 1541
    .local v8, "bValue":Z
    const/16 v3, 0xc

    aget-object v3, p3, v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1542
    const/4 v8, 0x1

    .line 1544
    :cond_1
    const/4 v3, 0x2

    aget-object v4, p3, v3

    const/4 v3, 0x3

    aget-object v5, p3, v3

    const/4 v3, 0x7

    aget-object v3, p3, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v3, 0xa

    aget-object v3, p3, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 1810
    .end local v8    # "bValue":Z
    :cond_2
    :goto_1
    const/4 v3, 0x1

    :goto_2
    return v3

    .line 1548
    :cond_3
    const/16 v3, 0x265

    move/from16 v0, p1

    if-ne v0, v3, :cond_5

    .line 1550
    const/4 v3, 0x2

    aget-object v22, p3, v3

    .line 1551
    .local v22, "path":Ljava/lang/String;
    move-object/from16 v0, p3

    array-length v3, v0

    const/4 v4, 0x3

    if-le v3, v4, :cond_4

    const/4 v3, 0x3

    aget-object v28, p3, v3

    .line 1553
    .local v28, "uuid":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/os/storage/StorageVolume;

    .line 1554
    .local v29, "vol":Landroid/os/storage/StorageVolume;
    if-eqz v29, :cond_2

    .line 1555
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageVolume;->setUuid(Ljava/lang/String;)V

    goto :goto_1

    .line 1551
    .end local v28    # "uuid":Ljava/lang/String;
    .end local v29    # "vol":Landroid/os/storage/StorageVolume;
    :cond_4
    const/16 v28, 0x0

    goto :goto_3

    .line 1557
    .end local v22    # "path":Ljava/lang/String;
    :cond_5
    const/16 v3, 0x266

    move/from16 v0, p1

    if-ne v0, v3, :cond_7

    .line 1559
    const/4 v3, 0x2

    aget-object v22, p3, v3

    .line 1560
    .restart local v22    # "path":Ljava/lang/String;
    move-object/from16 v0, p3

    array-length v3, v0

    const/4 v4, 0x3

    if-le v3, v4, :cond_6

    const/4 v3, 0x3

    aget-object v27, p3, v3

    .line 1562
    .local v27, "userLabel":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/os/storage/StorageVolume;

    .line 1563
    .restart local v29    # "vol":Landroid/os/storage/StorageVolume;
    if-eqz v29, :cond_2

    .line 1564
    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageVolume;->setUserLabel(Ljava/lang/String;)V

    goto :goto_1

    .line 1560
    .end local v27    # "userLabel":Ljava/lang/String;
    .end local v29    # "vol":Landroid/os/storage/StorageVolume;
    :cond_6
    const/16 v27, 0x0

    goto :goto_4

    .line 1566
    .end local v22    # "path":Ljava/lang/String;
    :cond_7
    const/16 v3, 0x276

    move/from16 v0, p1

    if-eq v0, v3, :cond_8

    const/16 v3, 0x277

    move/from16 v0, p1

    if-eq v0, v3, :cond_8

    const/16 v3, 0x278

    move/from16 v0, p1

    if-ne v0, v3, :cond_12

    .line 1572
    :cond_8
    const/4 v9, 0x0

    .line 1573
    .local v9, "action":Ljava/lang/String;
    const/4 v3, 0x2

    aget-object v18, p3, v3

    .line 1574
    .local v18, "label":Ljava/lang/String;
    const/4 v3, 0x3

    aget-object v22, p3, v3

    .line 1575
    .restart local v22    # "path":Ljava/lang/String;
    const/16 v20, -0x1

    .line 1576
    .local v20, "major":I
    const/16 v21, -0x1

    .line 1579
    .local v21, "minor":I
    const/4 v3, 0x6

    :try_start_0
    aget-object v3, p3, v3

    const/4 v4, 0x1

    const/4 v5, 0x6

    aget-object v5, p3, v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 1580
    .local v13, "devComp":Ljava/lang/String;
    const-string v3, ":"

    invoke-virtual {v13, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 1581
    .local v14, "devTok":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v14, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 1582
    const/4 v3, 0x1

    aget-object v3, v14, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v21

    .line 1589
    .end local v13    # "devComp":Ljava/lang/String;
    .end local v14    # "devTok":[Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1590
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/os/storage/StorageVolume;

    .line 1591
    .local v30, "volume":Landroid/os/storage/StorageVolume;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 1592
    .local v25, "state":Ljava/lang/String;
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1594
    const/16 v3, 0x276

    move/from16 v0, p1

    if-ne v0, v3, :cond_b

    .line 1602
    sget-object v3, Lcom/android/server/MountService;->EXTERNAL_OTG:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1605
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1606
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    sget-object v5, Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/storage/StorageVolume;

    .line 1607
    .local v23, "primaryVolume":Landroid/os/storage/StorageVolume;
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1608
    const-string v3, "android.intent.action.MEDIA_EJECT"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 1609
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->doSDSwapVolumeUpdate()V

    .line 1610
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->updateDefaultpath()V

    .line 1611
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->sendSDSwapIntent()V

    .line 1613
    .end local v23    # "primaryVolume":Landroid/os/storage/StorageVolume;
    :cond_9
    new-instance v3, Lcom/android/server/MountService$9;

    const-string v4, "MountService#VolumeDiskInserted"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v3, v0, v4, v1}, Lcom/android/server/MountService$9;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/MountService$9;->start()V

    .line 1663
    const-string v9, "android.intent.action.SD_INSERTED"

    .line 1752
    :cond_a
    :goto_6
    if-eqz v9, :cond_2

    .line 1753
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v9, v1, v3}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    goto/16 :goto_1

    .line 1583
    .end local v25    # "state":Ljava/lang/String;
    .end local v30    # "volume":Landroid/os/storage/StorageVolume;
    :catch_0
    move-exception v15

    .line 1584
    .local v15, "ex":Ljava/lang/Exception;
    const-string v3, "MountService"

    const-string v4, "Failed to parse major/minor"

    invoke-static {v3, v4, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 1592
    .end local v15    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 1607
    .restart local v25    # "state":Ljava/lang/String;
    .restart local v30    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 1664
    :cond_b
    const/16 v3, 0x277

    move/from16 v0, p1

    if-ne v0, v3, :cond_e

    .line 1665
    sget-object v3, Lcom/android/server/MountService;->EXTERNAL_OTG:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 1666
    const-string v3, "MountService"

    const-string v4, "[SWAP] removed MTK_2SDCARD_SWAP"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/MountService;->mUnmountSwap:Z

    .line 1668
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->doSDSwapVolumeUpdate()V

    .line 1669
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->updateDefaultpath()V

    .line 1670
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->sendSDSwapIntent()V

    .line 1671
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/MountService;->mUnmountSwap:Z

    .line 1676
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "bad_removal"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1677
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 1679
    :cond_d
    const-string v3, "MountService"

    const-string v4, "Sending eject event first"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    const-string v3, "android.intent.action.MEDIA_EJECT"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 1682
    const-string v3, "MountService"

    const-string v4, "Sending unmounted event first"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    const-string v3, "unmounted"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;Ljava/lang/String;)V

    .line 1687
    const-string v3, "unmounted"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 1689
    const-string v3, "MountService"

    const-string v4, "Sending media removed"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    const-string v3, "removed"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v3}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1691
    const-string v9, "android.intent.action.MEDIA_REMOVED"

    goto/16 :goto_6

    .line 1702
    :cond_e
    const/16 v3, 0x278

    move/from16 v0, p1

    if-ne v0, v3, :cond_10

    .line 1712
    const-string v3, "MountService"

    const-string v4, "Sending eject event first"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    const-string v3, "android.intent.action.MEDIA_EJECT"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 1715
    sget-object v3, Lcom/android/server/MountService;->EXTERNAL_OTG:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 1717
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1718
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    const-string v5, "/storage/sdcard1"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/storage/StorageVolume;

    .line 1719
    .local v24, "secondaryVolume":Landroid/os/storage/StorageVolume;
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1720
    const-string v3, "android.intent.action.MEDIA_EJECT"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 1722
    .end local v24    # "secondaryVolume":Landroid/os/storage/StorageVolume;
    :cond_f
    const-string v3, "MountService"

    const-string v4, "Sending unmounted event first"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    const-string v3, "unmounted"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;Ljava/lang/String;)V

    .line 1725
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 1727
    const-string v3, "MountService"

    const-string v4, "Sending media bad removal"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    const-string v3, "bad_removal"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v3}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1729
    const-string v9, "android.intent.action.MEDIA_BAD_REMOVAL"

    .line 1740
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->getDefaultPath()Ljava/lang/String;

    move-result-object v12

    .line 1741
    .local v12, "defaultPath":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->updateDefaultpath()V

    .line 1743
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->enableDefaultToast()Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1744
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const v5, 0x2050079

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6

    .line 1719
    .end local v12    # "defaultPath":Ljava/lang/String;
    :catchall_2
    move-exception v3

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v3

    .line 1746
    :cond_10
    const/16 v3, 0x2bc

    move/from16 v0, p1

    if-ne v0, v3, :cond_11

    .line 1747
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/server/EventLogTags;->writeFstrimFinish(J)V

    goto/16 :goto_6

    .line 1749
    :cond_11
    const-string v3, "MountService"

    const-string v4, "Unknown code {%d}"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1755
    .end local v9    # "action":Ljava/lang/String;
    .end local v18    # "label":Ljava/lang/String;
    .end local v20    # "major":I
    .end local v21    # "minor":I
    .end local v22    # "path":Ljava/lang/String;
    .end local v25    # "state":Ljava/lang/String;
    .end local v30    # "volume":Landroid/os/storage/StorageVolume;
    :cond_12
    const/16 v3, 0x279

    move/from16 v0, p1

    if-ne v0, v3, :cond_13

    .line 1757
    const/4 v9, 0x0

    .line 1758
    .restart local v9    # "action":Ljava/lang/String;
    const/4 v3, 0x2

    aget-object v18, p3, v3

    .line 1759
    .restart local v18    # "label":Ljava/lang/String;
    const/4 v3, 0x3

    aget-object v22, p3, v3

    .line 1762
    .restart local v22    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1763
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/os/storage/StorageVolume;

    .line 1764
    .restart local v30    # "volume":Landroid/os/storage/StorageVolume;
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1765
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VoldResponseCode.VolumeEjectBeforeSwap: send eject to volume :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v30 .. v30}, Landroid/os/storage/StorageVolume;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    const-string v3, "android.intent.action.MEDIA_EJECT"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    goto/16 :goto_1

    .line 1764
    .end local v30    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_3
    move-exception v3

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v3

    .line 1768
    .end local v9    # "action":Ljava/lang/String;
    .end local v18    # "label":Ljava/lang/String;
    .end local v22    # "path":Ljava/lang/String;
    :cond_13
    const/16 v3, 0x27a

    move/from16 v0, p1

    if-ne v0, v3, :cond_14

    .line 1769
    const/4 v9, 0x0

    .line 1770
    .restart local v9    # "action":Ljava/lang/String;
    const/4 v3, 0x2

    aget-object v18, p3, v3

    .line 1771
    .restart local v18    # "label":Ljava/lang/String;
    const/4 v3, 0x3

    aget-object v22, p3, v3

    .line 1774
    .restart local v22    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1775
    :try_start_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/os/storage/StorageVolume;

    .line 1776
    .restart local v30    # "volume":Landroid/os/storage/StorageVolume;
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 1777
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VoldResponseCode.VolumeUnmountable: send MEDIA_UNMOUNTABLE to volume :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v30 .. v30}, Landroid/os/storage/StorageVolume;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    const-string v3, "unmountable"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v3}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1779
    const-string v3, "android.intent.action.MEDIA_UNMOUNTABLE"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 1780
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->updateDefaultpath()V

    .line 1781
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->doSDSwapVolumeUpdate()V

    .line 1783
    new-instance v17, Landroid/content/Intent;

    const-string v3, "com.mediatek.SD_SWAP"

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1784
    .local v17, "intent":Landroid/content/Intent;
    const-string v3, "SD_EXIST"

    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->getSwapState()Z

    move-result v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1785
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendSDSwapIntent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1776
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v30    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_4
    move-exception v3

    :try_start_a
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v3

    .line 1787
    .end local v9    # "action":Ljava/lang/String;
    .end local v18    # "label":Ljava/lang/String;
    .end local v22    # "path":Ljava/lang/String;
    :cond_14
    const/16 v3, 0x262

    move/from16 v0, p1

    if-ne v0, v3, :cond_15

    .line 1788
    const/4 v9, 0x0

    .line 1789
    .restart local v9    # "action":Ljava/lang/String;
    const/4 v3, 0x2

    aget-object v18, p3, v3

    .line 1790
    .restart local v18    # "label":Ljava/lang/String;
    const/4 v3, 0x3

    aget-object v22, p3, v3

    .line 1793
    .restart local v22    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1794
    :try_start_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/os/storage/StorageVolume;

    .line 1795
    .restart local v30    # "volume":Landroid/os/storage/StorageVolume;
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 1796
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VoldResponseCode.VolumeMountFailedBlank: send MEDIA_NOFS to volume :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v30 .. v30}, Landroid/os/storage/StorageVolume;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    const-string v3, "nofs"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v3}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1798
    const-string v3, "android.intent.action.MEDIA_NOFS"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 1799
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->updateDefaultpath()V

    .line 1800
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->doSDSwapVolumeUpdate()V

    .line 1802
    new-instance v17, Landroid/content/Intent;

    const-string v3, "com.mediatek.SD_SWAP"

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1803
    .restart local v17    # "intent":Landroid/content/Intent;
    const-string v3, "SD_EXIST"

    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->getSwapState()Z

    move-result v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1804
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendSDSwapIntent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1795
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v30    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_5
    move-exception v3

    :try_start_c
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v3

    .line 1807
    .end local v9    # "action":Ljava/lang/String;
    .end local v18    # "label":Ljava/lang/String;
    .end local v22    # "path":Ljava/lang/String;
    :cond_15
    const/4 v3, 0x0

    goto/16 :goto_2
.end method

.method public registerListener(Landroid/os/storage/IMountServiceListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/os/storage/IMountServiceListener;

    .prologue
    .line 2584
    iget-object v3, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 2585
    :try_start_0
    new-instance v0, Lcom/android/server/MountService$MountServiceBinderListener;

    invoke-direct {v0, p0, p1}, Lcom/android/server/MountService$MountServiceBinderListener;-><init>(Lcom/android/server/MountService;Landroid/os/storage/IMountServiceListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2587
    .local v0, "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    :try_start_1
    invoke-interface {p1}, Landroid/os/storage/IMountServiceListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 2588
    iget-object v2, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2592
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 2593
    return-void

    .line 2589
    :catch_0
    move-exception v1

    .line 2590
    .local v1, "rex":Landroid/os/RemoteException;
    const-string v2, "MountService"

    const-string v4, "Failed to link to listener death"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2592
    .end local v0    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v1    # "rex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public renameSecureContainer(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "oldId"    # Ljava/lang/String;
    .param p2, "newId"    # Ljava/lang/String;

    .prologue
    .line 3246
    const-string v2, "android.permission.ASEC_RENAME"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 3247
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3248
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 3250
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v3

    .line 3255
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v2, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3256
    :cond_0
    const/4 v1, -0x6

    monitor-exit v3

    .line 3267
    :goto_0
    return v1

    .line 3258
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3260
    const/4 v1, 0x0

    .line 3262
    .local v1, "rc":I
    :try_start_1
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "asec"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "rename"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3263
    :catch_0
    move-exception v0

    .line 3264
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_0

    .line 3258
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .end local v1    # "rc":I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public setUsbMassStorageEnabled(Z)V
    .locals 18
    .param p1, "enable"    # Z

    .prologue
    .line 2738
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2739
    const-string v14, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2753
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    .line 2754
    .local v5, "mState":Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v14, "mounted"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 2758
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    monitor-enter v15

    .line 2759
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 2760
    .local v4, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v2

    .line 2761
    .local v2, "count":I
    new-array v14, v2, [Ljava/lang/String;

    invoke-interface {v4, v14}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    .line 2762
    .local v8, "paths":[Ljava/lang/String;
    new-array v11, v2, [Ljava/lang/String;

    .line 2763
    .local v11, "states":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 2764
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    aget-object v16, v8, v3

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    aput-object v14, v11, v3

    .line 2763
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2766
    :cond_1
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2768
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/MountService;->mMountAll:Z

    .line 2769
    add-int/lit8 v3, v2, -0x1

    :goto_1
    if-ltz v3, :cond_a

    .line 2770
    aget-object v7, v8, v3

    .line 2771
    .local v7, "path":Ljava/lang/String;
    aget-object v10, v11, v3

    .line 2772
    .local v10, "state":Ljava/lang/String;
    const-string v6, "ums"

    .line 2774
    .local v6, "method":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v15

    .line 2775
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    invoke-virtual {v14, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/storage/StorageVolume;

    .line 2776
    .local v13, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v13}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 2777
    const-string v14, "MountService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Emulated volume: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", no need share!"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2778
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2769
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2766
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v4    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "method":Ljava/lang/String;
    .end local v7    # "path":Ljava/lang/String;
    .end local v8    # "paths":[Ljava/lang/String;
    .end local v10    # "state":Ljava/lang/String;
    .end local v11    # "states":[Ljava/lang/String;
    .end local v13    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_0
    move-exception v14

    :try_start_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v14

    .line 2781
    .restart local v2    # "count":I
    .restart local v3    # "i":I
    .restart local v4    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v6    # "method":Ljava/lang/String;
    .restart local v7    # "path":Ljava/lang/String;
    .restart local v8    # "paths":[Ljava/lang/String;
    .restart local v10    # "state":Ljava/lang/String;
    .restart local v11    # "states":[Ljava/lang/String;
    .restart local v13    # "volume":Landroid/os/storage/StorageVolume;
    :cond_3
    :try_start_3
    invoke-virtual {v13}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v14

    const-string v16, "/mnt/udisk/folder1"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 2782
    const-string v14, "MountService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "ICUSB: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", no need share!"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2783
    monitor-exit v15

    goto :goto_2

    .line 2785
    .end local v13    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_1
    move-exception v14

    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v14

    .restart local v13    # "volume":Landroid/os/storage/StorageVolume;
    :cond_4
    :try_start_4
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2787
    if-eqz p1, :cond_7

    const-string v14, "mounted"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 2788
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/MountService;->mIsTurnOnOffUsb:Z

    .line 2789
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/MountService;->mUMSCount:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/MountService;->mUMSCount:I

    .line 2794
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/MountService;->isExternalStorage(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    sget-object v14, Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 2796
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/MountService;->mUnmountSwap:Z

    .line 2797
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v7}, Lcom/android/server/MountService;->updateDefaultPathForSwap(ZLjava/lang/String;)V

    .line 2798
    const-string v14, "MountService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "MTK_SHARED_SDCARD is enabled, need to swap sd when UMS is enabled: mUnmountSwap: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/MountService;->mUnmountSwap:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2801
    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/android/server/MountService;->setUmsEnabling(Z)V

    .line 2802
    new-instance v12, Lcom/android/server/MountService$UmsEnableCallBack;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v7, v6, v14}, Lcom/android/server/MountService$UmsEnableCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2803
    .local v12, "umscb":Lcom/android/server/MountService$UmsEnableCallBack;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v15, v0, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2805
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/MountService;->setUmsEnabling(Z)V

    .line 2812
    .end local v12    # "umscb":Lcom/android/server/MountService$UmsEnableCallBack;
    :cond_6
    :goto_3
    if-nez p1, :cond_2

    const-string v14, "removed"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    const-string v14, "bad_removal"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 2814
    const/16 v9, 0xf

    .line 2815
    .local v9, "retry":I
    :goto_4
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/MountService;->mUMSCount:I

    if-lez v14, :cond_8

    if-lez v9, :cond_8

    .line 2816
    const-wide/16 v14, 0x3e8

    invoke-static {v14, v15}, Landroid/os/SystemClock;->sleep(J)V

    .line 2817
    add-int/lit8 v9, v9, -0x1

    .line 2818
    const-string v14, "MountService"

    const-string v15, "Turn off UMS, wait for turn on UMS done!"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2806
    .end local v9    # "retry":I
    :cond_7
    if-eqz p1, :cond_6

    const-string v14, "unmounted"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 2807
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v7, v6, v1}, Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    .line 2820
    .restart local v9    # "retry":I
    :cond_8
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/MountService;->mIsTurnOnOffUsb:Z

    .line 2821
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v7, v6, v1}, Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2822
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/server/MountService;->mountVolume(Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_9

    .line 2823
    const-string v14, "MountService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to remount "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " after disabling share method "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2831
    :cond_9
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/MountService;->mIsTurnOnOffUsb:Z

    goto/16 :goto_2

    .line 2834
    .end local v6    # "method":Ljava/lang/String;
    .end local v7    # "path":Ljava/lang/String;
    .end local v9    # "retry":I
    .end local v10    # "state":Ljava/lang/String;
    .end local v13    # "volume":Landroid/os/storage/StorageVolume;
    :cond_a
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/MountService;->mMountAll:Z

    .line 2835
    return-void
.end method

.method public shareCDRom(Z)V
    .locals 4
    .param p1, "share"    # Z

    .prologue
    .line 4525
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shareCDRom "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4526
    move v0, p1

    .line 4527
    .local v0, "doShare":Z
    new-instance v1, Lcom/android/server/MountService$13;

    invoke-direct {v1, p0, v0}, Lcom/android/server/MountService$13;-><init>(Lcom/android/server/MountService;Z)V

    invoke-virtual {v1}, Lcom/android/server/MountService$13;->start()V

    .line 4543
    return-void
.end method

.method public shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    .locals 14
    .param p1, "observer"    # Landroid/os/storage/IMountShutdownObserver;

    .prologue
    .line 2608
    const-string v11, "android.permission.SHUTDOWN"

    invoke-direct {p0, v11}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2610
    const-string v11, "MountService"

    const-string v12, "Shutting down"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2611
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/server/MountService;->mShutdownCount:I

    .line 2612
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/MountService;->mSetDefaultEnable:Z

    .line 2613
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/MountService;->mBootCompleted:Z

    .line 2615
    iget-object v12, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v12

    .line 2616
    :try_start_0
    new-instance v7, Ljava/util/HashMap;

    iget-object v11, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-direct {v7, v11}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 2617
    .local v7, "snapshot":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2620
    sget-object v11, Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;

    invoke-virtual {p0, v11}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2621
    .local v3, "mState":Ljava/lang/String;
    const-string v11, "mounted"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2622
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/MountService;->mShutdownSD:Z

    .line 2623
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/MountService;->mUnmountPrimary:Z

    .line 2628
    :cond_0
    :goto_0
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2629
    .local v4, "path":Ljava/lang/String;
    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2631
    .local v8, "state":Ljava/lang/String;
    const-string v11, "shared"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 2641
    const-string v11, "ums"

    const/4 v12, 0x0

    invoke-direct {p0, v4, v11, v12}, Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2663
    :cond_2
    :goto_2
    const-string v11, "mounted"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2671
    iget-object v12, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v12

    .line 2672
    :try_start_1
    iget-object v11, p0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/storage/StorageVolume;

    .line 2673
    .local v10, "volume":Landroid/os/storage/StorageVolume;
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2674
    invoke-virtual {v10}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 2675
    invoke-virtual {v10}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2676
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/MountService;->mUnmountPrimary:Z

    goto :goto_1

    .line 2617
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "mState":Ljava/lang/String;
    .end local v4    # "path":Ljava/lang/String;
    .end local v7    # "snapshot":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "state":Ljava/lang/String;
    .end local v10    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_0
    move-exception v11

    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v11

    .line 2624
    .restart local v3    # "mState":Ljava/lang/String;
    .restart local v7    # "snapshot":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    const-string v11, "shared"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2625
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/MountService;->mShutdownSD:Z

    goto :goto_0

    .line 2642
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v4    # "path":Ljava/lang/String;
    .restart local v8    # "state":Ljava/lang/String;
    :cond_4
    const-string v11, "checking"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2648
    const/16 v5, 0x1e

    .line 2649
    .local v5, "retries":I
    :goto_3
    const-string v11, "checking"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    add-int/lit8 v6, v5, -0x1

    .end local v5    # "retries":I
    .local v6, "retries":I
    if-ltz v5, :cond_9

    .line 2651
    const-wide/16 v11, 0x3e8

    :try_start_3
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 2656
    invoke-virtual {p0, v4}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move v5, v6

    .end local v6    # "retries":I
    .restart local v5    # "retries":I
    goto :goto_3

    .line 2652
    .end local v5    # "retries":I
    .restart local v6    # "retries":I
    :catch_0
    move-exception v2

    .line 2653
    .local v2, "iex":Ljava/lang/InterruptedException;
    const-string v11, "MountService"

    const-string v12, "Interrupted while waiting for media"

    invoke-static {v11, v12, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v6

    .line 2658
    .end local v2    # "iex":Ljava/lang/InterruptedException;
    .end local v6    # "retries":I
    .restart local v5    # "retries":I
    :cond_5
    :goto_4
    if-nez v5, :cond_2

    .line 2659
    const-string v11, "MountService"

    const-string v12, "Timed out waiting for media to check"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2673
    .end local v5    # "retries":I
    :catchall_1
    move-exception v11

    :try_start_4
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v11

    .line 2681
    .restart local v10    # "volume":Landroid/os/storage/StorageVolume;
    :cond_6
    iget v11, p0, Lcom/android/server/MountService;->mShutdownCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/android/server/MountService;->mShutdownCount:I

    .line 2683
    new-instance v9, Lcom/android/server/MountService$ShutdownCallBack;

    invoke-direct {v9, p0, v4, p1}, Lcom/android/server/MountService$ShutdownCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Landroid/os/storage/IMountShutdownObserver;)V

    .line 2684
    .local v9, "ucb":Lcom/android/server/MountService$ShutdownCallBack;
    iget-object v11, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v12, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 2687
    .end local v4    # "path":Ljava/lang/String;
    .end local v8    # "state":Ljava/lang/String;
    .end local v9    # "ucb":Lcom/android/server/MountService$ShutdownCallBack;
    .end local v10    # "volume":Landroid/os/storage/StorageVolume;
    :cond_7
    iget v11, p0, Lcom/android/server/MountService;->mShutdownCount:I

    if-gtz v11, :cond_8

    if-eqz p1, :cond_8

    .line 2694
    const/4 v11, 0x0

    :try_start_5
    invoke-interface {p1, v11}, Landroid/os/storage/IMountShutdownObserver;->onShutDownComplete(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 2700
    :cond_8
    :goto_5
    new-instance v11, Lcom/android/server/MountService$11;

    invoke-direct {v11, p0}, Lcom/android/server/MountService$11;-><init>(Lcom/android/server/MountService;)V

    invoke-virtual {v11}, Lcom/android/server/MountService$11;->start()V

    .line 2712
    return-void

    .line 2695
    :catch_1
    move-exception v0

    .line 2696
    .local v0, "e":Landroid/os/RemoteException;
    const-string v11, "MountService"

    const-string v12, "RemoteException when shutting down"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v4    # "path":Ljava/lang/String;
    .restart local v6    # "retries":I
    .restart local v8    # "state":Ljava/lang/String;
    :cond_9
    move v5, v6

    .end local v6    # "retries":I
    .restart local v5    # "retries":I
    goto :goto_4
.end method

.method public systemReady()V
    .locals 2

    .prologue
    .line 2575
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/MountService;->mSystemReady:Z

    .line 2576
    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2577
    return-void
.end method

.method public unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V
    .locals 9
    .param p1, "rawPath"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .param p3, "token"    # Landroid/os/storage/IObbActionListener;
    .param p4, "nonce"    # I

    .prologue
    .line 3391
    const-string v1, "rawPath cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3394
    iget-object v2, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    monitor-enter v2

    .line 3395
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/MountService$ObbState;

    .line 3396
    .local v8, "existingState":Lcom/android/server/MountService$ObbState;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3398
    if-eqz v8, :cond_0

    .line 3400
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 3401
    .local v4, "callingUid":I
    new-instance v0, Lcom/android/server/MountService$ObbState;

    iget-object v3, v8, Lcom/android/server/MountService$ObbState;->canonicalPath:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/MountService$ObbState;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;I)V

    .line 3403
    .local v0, "newState":Lcom/android/server/MountService$ObbState;
    new-instance v7, Lcom/android/server/MountService$UnmountObbAction;

    invoke-direct {v7, p0, v0, p2}, Lcom/android/server/MountService$UnmountObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Z)V

    .line 3404
    .local v7, "action":Lcom/android/server/MountService$ObbAction;
    iget-object v1, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v2, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v7}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3411
    .end local v0    # "newState":Lcom/android/server/MountService$ObbState;
    .end local v4    # "callingUid":I
    .end local v7    # "action":Lcom/android/server/MountService$ObbAction;
    :goto_0
    return-void

    .line 3396
    .end local v8    # "existingState":Lcom/android/server/MountService$ObbState;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 3409
    .restart local v8    # "existingState":Lcom/android/server/MountService$ObbState;
    :cond_0
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown OBB mount at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unmountSecureContainer(Ljava/lang/String;Z)I
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .prologue
    .line 3192
    const-string v4, "android.permission.ASEC_MOUNT_UNMOUNT"

    invoke-direct {p0, v4}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 3193
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3194
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 3196
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5

    .line 3197
    :try_start_0
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3198
    const/4 v3, -0x5

    monitor-exit v5

    .line 3232
    :cond_0
    :goto_0
    return v3

    .line 3200
    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3208
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    .line 3209
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 3211
    const/4 v3, 0x0

    .line 3213
    .local v3, "rc":I
    :try_start_1
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v4, "asec"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "unmount"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-direct {v0, v4, v5}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3214
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    if-eqz p2, :cond_2

    .line 3215
    const-string v4, "force"

    invoke-virtual {v0, v4}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 3217
    :cond_2
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3227
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :goto_1
    if-nez v3, :cond_0

    .line 3228
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5

    .line 3229
    :try_start_2
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 3230
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 3200
    .end local v3    # "rc":I
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 3218
    .restart local v3    # "rc":I
    :catch_0
    move-exception v2

    .line 3219
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 3220
    .local v1, "code":I
    const/16 v4, 0x195

    if-ne v1, v4, :cond_3

    .line 3221
    const/4 v3, -0x7

    goto :goto_1

    .line 3223
    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public unmountVolume(Ljava/lang/String;ZZ)V
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .param p3, "removeEncryption"    # Z

    .prologue
    const/4 v6, 0x1

    .line 2926
    const-string v3, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2927
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2929
    invoke-virtual {p0, p1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2931
    .local v2, "volState":Ljava/lang/String;
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unmounting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " force = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " removeEncryption = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2935
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->isExternalStorage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2937
    iput-boolean v6, p0, Lcom/android/server/MountService;->mUnmountSwap:Z

    .line 2938
    const/4 v3, 0x0

    invoke-direct {p0, v3, p1}, Lcom/android/server/MountService;->updateDefaultPathForSwap(ZLjava/lang/String;)V

    .line 2940
    :try_start_0
    const-string v3, "MountService"

    const-string v4, "set prop"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2941
    const-string v3, "sys.sd.swapping"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2946
    :cond_0
    :goto_0
    const-string v3, "unmounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "removed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "shared"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "unmountable"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2956
    :cond_1
    :goto_1
    return-void

    .line 2942
    :catch_0
    move-exception v0

    .line 2943
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "MountService"

    const-string v4, "IllegalArgumentException when set default path:"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2954
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    new-instance v1, Lcom/android/server/MountService$UnmountCallBack;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/MountService$UnmountCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;ZZ)V

    .line 2955
    .local v1, "ucb":Lcom/android/server/MountService$UnmountCallBack;
    iget-object v3, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method public unmountVolumeForUserSwitch(Ljava/lang/String;ZZ)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .param p3, "removeEncryption"    # Z

    .prologue
    const/4 v5, 0x1

    .line 2959
    const-string v1, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v1}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2960
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2962
    invoke-virtual {p0, p1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2964
    .local v6, "volState":Ljava/lang/String;
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User Switch Unmounting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " force = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " removeEncryption = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2968
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->isExternalStorage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2970
    iput-boolean v5, p0, Lcom/android/server/MountService;->mUnmountSwap:Z

    .line 2971
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1}, Lcom/android/server/MountService;->updateDefaultPathForSwap(ZLjava/lang/String;)V

    .line 2973
    :cond_0
    const-string v1, "unmounted"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "removed"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "shared"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "unmountable"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2994
    :cond_1
    :goto_0
    return-void

    .line 2983
    :cond_2
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2984
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/StorageVolume;

    .line 2985
    .local v7, "volume":Landroid/os/storage/StorageVolume;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2986
    const-string v1, "unmounted"

    invoke-direct {p0, v7, v1}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 2987
    iget-boolean v1, p0, Lcom/android/server/MountService;->mSetDefaultEnable:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/MountService;->mIsTurnOnOffUsb:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/MountService;->mMountSwap:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/MountService;->mUnmountSwap:Z

    if-nez v1, :cond_3

    .line 2988
    const-string v1, "MountService"

    const-string v2, "updateDefaultpath Environment.MEDIA_UNMOUNTED"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2989
    invoke-direct {p0}, Lcom/android/server/MountService;->updateDefaultpath()V

    .line 2991
    :cond_3
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-direct {p0, v1, v7, v2}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 2992
    new-instance v0, Lcom/android/server/MountService$UnmountCallBack;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/MountService$UnmountCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;ZZZ)V

    .line 2993
    .local v0, "ucb":Lcom/android/server/MountService$UnmountCallBack;
    iget-object v1, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2985
    .end local v0    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    .end local v7    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public unmountVolumeNotSwap(Ljava/lang/String;ZZ)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .param p3, "removeEncryption"    # Z

    .prologue
    .line 4549
    const-string v2, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 4550
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 4552
    invoke-virtual {p0, p1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4554
    .local v1, "volState":Ljava/lang/String;
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unmounting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " force = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " removeEncryption = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4559
    const-string v2, "unmounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "removed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "shared"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "unmountable"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4569
    :cond_0
    :goto_0
    return-void

    .line 4567
    :cond_1
    new-instance v0, Lcom/android/server/MountService$UnmountCallBack;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/MountService$UnmountCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;ZZ)V

    .line 4568
    .local v0, "ucb":Lcom/android/server/MountService$UnmountCallBack;
    iget-object v2, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public unregisterListener(Landroid/os/storage/IMountServiceListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/os/storage/IMountServiceListener;

    .prologue
    .line 2596
    iget-object v3, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 2597
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$MountServiceBinderListener;

    .line 2598
    .local v0, "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    iget-object v2, v0, Lcom/android/server/MountService$MountServiceBinderListener;->mListener:Landroid/os/storage/IMountServiceListener;

    if-ne v2, p1, :cond_0

    .line 2599
    iget-object v2, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2600
    invoke-interface {p1}, Landroid/os/storage/IMountServiceListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2601
    monitor-exit v3

    .line 2605
    .end local v0    # "bl":Lcom/android/server/MountService$MountServiceBinderListener;
    :goto_0
    return-void

    .line 2604
    :cond_1
    monitor-exit v3

    goto :goto_0

    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public verifyEncryptionPassword(Ljava/lang/String;)I
    .locals 7
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3530
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_0

    .line 3531
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "no permission to access the crypt keeper"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3534
    :cond_0
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3537
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3538
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "password cannot be empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3541
    :cond_1
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3544
    const-string v2, "MountService"

    const-string v3, "validating encryption password..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3549
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "verifypw"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v6, p1}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 3550
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cryptfs verifypw => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3551
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 3554
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_0
    return v2

    .line 3552
    :catch_0
    move-exception v0

    .line 3554
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v2

    goto :goto_0
.end method

.method waitForAsecScan()V
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;)V

    .line 790
    return-void
.end method
