.class public Lcom/android/phone/EmergencyDialer;
.super Landroid/app/Activity;
.source "EmergencyDialer.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field private static isKeyPressed:Z

.field private static sTypeface:Landroid/graphics/Typeface;


# instance fields
.field private ONE_HAND_DIRECTION:Ljava/lang/String;

.field private ONE_HAND_ENABLED:Ljava/lang/String;

.field private mAdditionalButtons:Landroid/view/View;

.field private mApp:Lcom/android/phone/PhoneApp;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDTMFToneEnabled:Z

.field private mDelete:Landroid/view/View;

.field private mDialButton:Landroid/view/View;

.field private mDialButtonSim1:Landroid/view/View;

.field private mDialButtonSim2:Landroid/view/View;

.field mDigits:Landroid/widget/EditText;

.field private mDomesticOtaStart:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHaptic:Lcom/android/phone/HapticFeedback;

.field private mLastNumber:Ljava/lang/String;

.field private mLeftArrow:Landroid/view/View;

.field private mLocked:Z

.field private mMissingPhoneLock:Z

.field private mRightArrow:Landroid/view/View;

.field private mSimNum:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mToast:Landroid/widget/Toast;

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mToneGeneratorLock:Ljava/lang/Object;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/EmergencyDialer;->isKeyPressed:Z

    .line 149
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/EmergencyDialer;->sTypeface:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 141
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToast:Landroid/widget/Toast;

    .line 155
    const-string v0, "onehand_dialer_enabled"

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->ONE_HAND_ENABLED:Ljava/lang/String;

    .line 156
    const-string v0, "onehand_direction"

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->ONE_HAND_DIRECTION:Ljava/lang/String;

    .line 159
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/EmergencyDialer;->mSimNum:I

    .line 173
    new-instance v0, Lcom/android/phone/HapticFeedback;

    invoke-direct {v0}, Lcom/android/phone/HapticFeedback;-><init>()V

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mHaptic:Lcom/android/phone/HapticFeedback;

    .line 176
    new-instance v0, Lcom/android/phone/EmergencyDialer$1;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyDialer$1;-><init>(Lcom/android/phone/EmergencyDialer;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 193
    new-instance v0, Lcom/android/phone/EmergencyDialer$2;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyDialer$2;-><init>(Lcom/android/phone/EmergencyDialer;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/EmergencyDialer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/phone/EmergencyDialer;->mMissingPhoneLock:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/PhoneApp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mApp:Lcom/android/phone/PhoneApp;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/EmergencyDialer;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyDialer;->placeCall(I)V

    return-void
.end method

.method private createErrorMessage(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4
    .parameter

    .prologue
    .line 1063
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1064
    const v0, 0x7f0e01c5

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1066
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0e01c6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private disableHovering()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 524
    const v0, 0x7f0900a6

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    .line 525
    const v0, 0x7f0900a7

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    .line 526
    const v0, 0x7f0900a8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    .line 527
    const v0, 0x7f0900a9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    .line 528
    const v0, 0x7f0900aa

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    .line 529
    const v0, 0x7f0900ab

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    .line 530
    const v0, 0x7f0900ac

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    .line 531
    const v0, 0x7f0900ad

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    .line 532
    const v0, 0x7f0900ae

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    .line 533
    const v0, 0x7f0900af

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    .line 534
    const v0, 0x7f0900b0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    .line 535
    const v0, 0x7f0900b1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    .line 536
    return-void
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 1168
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mApp:Lcom/android/phone/PhoneApp;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToast:Landroid/widget/Toast;

    .line 1171
    :goto_0
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1172
    return-void

    .line 1170
    :cond_0
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private isSystemKeyEventRequested(I)Z
    .locals 4
    .parameter

    .prologue
    .line 1214
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mWindowManager:Landroid/view/IWindowManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1218
    :goto_0
    return v0

    .line 1215
    :catch_0
    move-exception v0

    .line 1216
    const-string v1, "EmergencyDialer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSystemKeyEventRequested - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private keyPressed(I)V
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 635
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {v1}, Lcom/android/phone/HapticFeedback;->vibrate()V

    .line 636
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 637
    .local v0, event:Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, p1, v0}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 638
    return-void
.end method

.method private launchEmergencyCallList()V
    .locals 5

    .prologue
    .line 787
    const-string v0, "com.android.phone.EmergencyDialer.LIST"

    .line 788
    .local v0, ACTION_EMERGENCY_LIST:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 789
    .local v1, i:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 790
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 791
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 792
    return-void
.end method

.method private launchEmergencyContactList()V
    .locals 13

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 801
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v3

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v11

    .line 802
    .local v11, radioState:I
    if-nez v11, :cond_1

    move v8, v3

    .line 804
    .local v8, isNoService:Z
    :goto_0
    const-string v0, "content://com.android.contacts/groups/title/ICE/contacts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 805
    .local v1, iceCountUri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "emergency"

    const-string v12, "true"

    invoke-virtual {v0, v2, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 809
    if-eqz v8, :cond_2

    .line 812
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v12, "_id"

    aput-object v12, v2, v3

    const-string v3, "default_emergency"

    aput-object v3, v2, v5

    const-string v3, "default_emergency = 1"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 817
    .local v6, cursor:Landroid/database/Cursor;
    :goto_1
    const/4 v10, 0x0

    .line 818
    .local v10, noEmergencyContacts:Z
    if-eqz v6, :cond_3

    .line 819
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 820
    const/4 v10, 0x1

    .line 822
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 827
    :goto_2
    if-eqz v10, :cond_4

    if-eqz v8, :cond_4

    .line 828
    const v0, 0x7f0e0712

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->displayToast(Ljava/lang/String;)V

    .line 844
    :goto_3
    return-void

    .end local v1           #iceCountUri:Landroid/net/Uri;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v8           #isNoService:Z
    .end local v10           #noEmergencyContacts:Z
    :cond_1
    move v8, v5

    .line 802
    goto :goto_0

    .line 814
    .restart local v1       #iceCountUri:Landroid/net/Uri;
    .restart local v8       #isNoService:Z
    :cond_2
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v2, v3

    move-object v3, v4

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .restart local v6       #cursor:Landroid/database/Cursor;
    goto :goto_1

    .line 824
    .restart local v10       #noEmergencyContacts:Z
    :cond_3
    const/4 v10, 0x1

    goto :goto_2

    .line 832
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    .line 833
    .local v9, lp:Landroid/view/WindowManager$LayoutParams;
    iget v0, v9, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x100

    or-int/2addr v0, v2

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 834
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 836
    new-instance v7, Landroid/content/Intent;

    const-string v0, "com.android.contacts.action.SHOW_EMERGENCY_CONTACTS"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 838
    .local v7, intent:Landroid/content/Intent;
    const-string v0, "EmergencyDialer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launchEmergencyContactList: default only : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    const-string v0, "default_only"

    invoke-virtual {v7, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 841
    const/high16 v0, 0x1080

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 842
    invoke-virtual {p0, v7}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 843
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_3
.end method

.method private onCreateSimSelectDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1088
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "SIM1_TYPE_SELECT"

    aput-object v1, v4, v0

    const-string v0, "SIM2_TYPE_SELECT"

    aput-object v0, v4, v6

    .line 1093
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x1030128

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1095
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 1098
    new-instance v0, Lcom/android/phone/EmergencyDialer$3;

    const v3, 0x10900d4

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/EmergencyDialer$3;-><init>(Lcom/android/phone/EmergencyDialer;Landroid/content/Context;I[Ljava/lang/String;Landroid/view/LayoutInflater;)V

    .line 1126
    new-instance v1, Lcom/android/phone/EmergencyDialer$4;

    invoke-direct {v1, p0}, Lcom/android/phone/EmergencyDialer$4;-><init>(Lcom/android/phone/EmergencyDialer;)V

    .line 1138
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1139
    const v3, 0x7f0e01c2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1140
    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1141
    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1142
    const v0, 0x7f0e002e

    new-instance v1, Lcom/android/phone/EmergencyDialer$5;

    invoke-direct {v1, p0}, Lcom/android/phone/EmergencyDialer$5;-><init>(Lcom/android/phone/EmergencyDialer;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1147
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1148
    new-instance v1, Lcom/android/phone/EmergencyDialer$6;

    invoke-direct {v1, p0}, Lcom/android/phone/EmergencyDialer$6;-><init>(Lcom/android/phone/EmergencyDialer;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1154
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1155
    return-void
.end method

.method private placeCall(I)V
    .locals 9
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 961
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/phone/PhoneApp;

    .line 963
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v3

    new-array v4, v3, [I

    .line 964
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v5

    move v3, v2

    .line 965
    :goto_0
    if-ge v3, v5, :cond_0

    .line 966
    iget-object v6, v0, Lcom/android/phone/PhoneApp;->phone:[Lcom/android/internal/telephony/Phone;

    aget-object v6, v6, v3

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    aput v6, v4, v3

    .line 967
    const-string v6, "EmergencyDialer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "placing call simId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", simState["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v4, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 970
    :cond_0
    aget v0, v4, p1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    if-lt v5, v0, :cond_1

    .line 971
    if-nez p1, :cond_4

    aget v0, v4, v1

    if-eq v0, v1, :cond_4

    move p1, v1

    .line 978
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    .line 981
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/telephony/MultiSimPhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "emergency_for_cyber_terror"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "118"

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 986
    :cond_2
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 988
    :cond_3
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 1022
    :goto_2
    return-void

    .line 973
    :cond_4
    if-ne p1, v1, :cond_1

    aget v0, v4, v2

    if-eq v0, v1, :cond_1

    move p1, v2

    .line 974
    goto :goto_1

    .line 995
    :cond_5
    const-string v0, "emergency_for_cyber_terror"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "118"

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 996
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1001
    :goto_3
    const-string v1, "tel"

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1002
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1004
    const-string v1, "SKTRADDialOption"

    const-string v3, "abroad"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1006
    const-string v1, "simSlot"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1009
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1010
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/phone/EmergencyDialer;->mMissingPhoneLock:Z

    if-eqz v0, :cond_7

    .line 1011
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_2

    .line 998
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_EMERGENCY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 1013
    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    .line 1019
    :cond_8
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1020
    invoke-virtual {p0, v2}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_2
.end method

.method private requestSystemKeyEvent(IZ)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1206
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mWindowManager:Landroid/view/IWindowManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1210
    :goto_0
    return v0

    .line 1207
    :catch_0
    move-exception v0

    .line 1208
    const-string v1, "EmergencyDialer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSystemKeyEvent - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setupKeypad()V
    .locals 2

    .prologue
    .line 502
    const v1, 0x7f0900a6

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 503
    const v1, 0x7f0900a7

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 504
    const v1, 0x7f0900a8

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 505
    const v1, 0x7f0900a9

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    const v1, 0x7f0900aa

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 507
    const v1, 0x7f0900ab

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 508
    const v1, 0x7f0900ac

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 509
    const v1, 0x7f0900ad

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 510
    const v1, 0x7f0900ae

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 511
    const v1, 0x7f0900af

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 513
    const v1, 0x7f0900b0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 514
    .local v0, view:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 515
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 517
    const v1, 0x7f0900b1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 519
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->disableHovering()V

    .line 520
    return-void
.end method

.method private updateDialAndDeleteButtonStateEnabledAttr()V
    .locals 2

    .prologue
    .line 1178
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1179
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    .line 1181
    .local v0, notEmpty:Z
    :goto_0
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1182
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim1:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim1:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1183
    :cond_0
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim2:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim2:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1184
    :cond_1
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1186
    .end local v0           #notEmpty:Z
    :cond_2
    return-void

    .line 1179
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "input"

    .prologue
    .line 233
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/phone/SpecialCharSequenceMgr;->handleCharsForLockedDevice(Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 238
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->updateDialAndDeleteButtonStateEnabledAttr()V

    .line 239
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 214
    return-void
.end method

.method protected maybeAddNumberFormatting()V
    .locals 0

    .prologue
    .line 487
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const/16 v7, 0x9

    const/4 v6, 0x7

    const/16 v3, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 663
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 780
    :cond_0
    :goto_0
    return-void

    .line 665
    :sswitch_0
    invoke-virtual {p0, v5}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 666
    invoke-direct {p0, v3}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 670
    :sswitch_1
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 671
    invoke-direct {p0, v7}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 675
    :sswitch_2
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 676
    const/16 v2, 0xa

    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 680
    :sswitch_3
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 681
    const/16 v2, 0xb

    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 685
    :sswitch_4
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 686
    const/16 v2, 0xc

    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 690
    :sswitch_5
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 691
    const/16 v2, 0xd

    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 695
    :sswitch_6
    invoke-virtual {p0, v6}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 696
    const/16 v2, 0xe

    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 700
    :sswitch_7
    invoke-virtual {p0, v3}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 701
    const/16 v2, 0xf

    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 705
    :sswitch_8
    invoke-virtual {p0, v7}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 706
    const/16 v2, 0x10

    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 710
    :sswitch_9
    invoke-virtual {p0, v4}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 711
    invoke-direct {p0, v6}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 715
    :sswitch_a
    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 716
    const/16 v2, 0x12

    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 720
    :sswitch_b
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 721
    const/16 v2, 0x11

    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 725
    :sswitch_c
    const/16 v2, 0x43

    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 729
    :sswitch_d
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {v2}, Lcom/android/phone/HapticFeedback;->vibrate()V

    .line 731
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/phone/PhoneApp;

    .line 732
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->phoneMgr:[Lcom/android/phone/PhoneInterfaceManager;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSimForVoiceCalls()I

    move-result v1

    .line 734
    .local v1, simSlotID:I
    invoke-direct {p0, v1}, Lcom/android/phone/EmergencyDialer;->placeCall(I)V

    goto/16 :goto_0

    .line 739
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v1           #simSlotID:I
    :sswitch_e
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {v2}, Lcom/android/phone/HapticFeedback;->vibrate()V

    .line 741
    invoke-direct {p0, v4}, Lcom/android/phone/EmergencyDialer;->placeCall(I)V

    goto/16 :goto_0

    .line 746
    :sswitch_f
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {v2}, Lcom/android/phone/HapticFeedback;->vibrate()V

    .line 748
    invoke-direct {p0, v5}, Lcom/android/phone/EmergencyDialer;->placeCall(I)V

    goto/16 :goto_0

    .line 753
    :sswitch_10
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 754
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setCursorVisible(Z)V

    goto/16 :goto_0

    .line 760
    :sswitch_11
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/phone/EmergencyDialer;->mMissingPhoneLock:Z

    if-eqz v2, :cond_1

    .line 761
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->launchEmergencyCallList()V

    goto/16 :goto_0

    .line 763
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->launchEmergencyContactList()V

    goto/16 :goto_0

    .line 767
    :sswitch_12
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mRightArrow:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 768
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 769
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->ONE_HAND_DIRECTION:Ljava/lang/String;

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 772
    :sswitch_13
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 773
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mRightArrow:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 774
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->ONE_HAND_DIRECTION:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 663
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0900a6 -> :sswitch_0
        0x7f0900a7 -> :sswitch_1
        0x7f0900a8 -> :sswitch_2
        0x7f0900a9 -> :sswitch_3
        0x7f0900aa -> :sswitch_4
        0x7f0900ab -> :sswitch_5
        0x7f0900ac -> :sswitch_6
        0x7f0900ad -> :sswitch_7
        0x7f0900ae -> :sswitch_8
        0x7f0900af -> :sswitch_b
        0x7f0900b0 -> :sswitch_9
        0x7f0900b1 -> :sswitch_a
        0x7f0900b4 -> :sswitch_11
        0x7f0900b5 -> :sswitch_d
        0x7f0900b6 -> :sswitch_c
        0x7f0900b7 -> :sswitch_e
        0x7f0900b8 -> :sswitch_f
        0x7f0900dd -> :sswitch_10
        0x7f0900e1 -> :sswitch_13
        0x7f0900e2 -> :sswitch_12
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 19
    .parameter "icicle"

    .prologue
    .line 243
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 247
    const/4 v11, 0x1

    .line 248
    .local v11, orientation:I
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 249
    .local v2, configuration:Landroid/content/res/Configuration;
    if-eqz v2, :cond_0

    .line 250
    iget v11, v2, Landroid/content/res/Configuration;->orientation:I

    .line 253
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/phone/EmergencyDialer;->mApp:Lcom/android/phone/PhoneApp;

    .line 254
    const-string v15, "statusbar"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/StatusBarManager;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/phone/EmergencyDialer;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 257
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v15

    const/high16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->addFlags(I)V

    .line 259
    const-string v15, "tablet_device"

    invoke-static {v15}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 261
    const/4 v15, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 262
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v15

    const/high16 v16, 0x10

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->addFlags(I)V

    .line 265
    :cond_1
    const-string v15, "lock"

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "missing_phone_lock"

    invoke-static/range {v16 .. v17}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/phone/EmergencyDialer;->mMissingPhoneLock:Z

    .line 267
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/phone/EmergencyDialer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 269
    const-string v15, "feature_lgt"

    invoke-static {v15}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/phone/EmergencyDialer;->mMissingPhoneLock:Z

    if-eqz v15, :cond_2

    .line 270
    const-string v15, "power"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/PowerManager;

    .line 271
    .local v12, pm:Landroid/os/PowerManager;
    const/16 v15, 0xa

    const-string v16, "EmergencyDialer"

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/phone/EmergencyDialer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 272
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v15}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v15

    if-nez v15, :cond_2

    .line 273
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v15}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 278
    .end local v12           #pm:Landroid/os/PowerManager;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->ONE_HAND_ENABLED:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    const/4 v7, 0x1

    .line 279
    .local v7, mIsOnehandOn:Z
    :goto_0
    const-string v15, "feature_chn_duos_cdma_gsm"

    invoke-static {v15}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 280
    const-string v15, "support_onehand_operation"

    invoke-static {v15}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_10

    if-eqz v7, :cond_10

    .line 281
    const v15, 0x7f040033

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/Activity;->setContentView(I)V

    .line 302
    :goto_1
    const v15, 0x7f0900dd

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    .line 303
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 304
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setLongClickable(Z)V

    .line 307
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setClickable(Z)V

    .line 310
    const-string v15, "support_onehand_operation"

    invoke-static {v15}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    if-eqz v7, :cond_4

    const/4 v15, 0x2

    if-eq v11, v15, :cond_4

    .line 311
    const v15, 0x7f0900e2

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/phone/EmergencyDialer;->mRightArrow:Landroid/view/View;

    .line 312
    const v15, 0x7f0900e1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/phone/EmergencyDialer;->mLeftArrow:Landroid/view/View;

    .line 314
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mRightArrow:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mLeftArrow:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->ONE_HAND_DIRECTION:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_13

    const/4 v8, 0x1

    .line 318
    .local v8, mIsOnehandOptionRight:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mLeftArrow:Landroid/view/View;

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mLeftArrow:Landroid/view/View;

    move-object/from16 v16, v0

    if-eqz v8, :cond_14

    const/4 v15, 0x0

    :goto_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    .line 319
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mRightArrow:Landroid/view/View;

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mRightArrow:Landroid/view/View;

    move-object/from16 v16, v0

    if-eqz v8, :cond_15

    const/16 v15, 0x8

    :goto_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    .line 322
    .end local v8           #mIsOnehandOptionRight:Z
    :cond_4
    sget-object v15, Lcom/android/phone/EmergencyDialer;->sTypeface:Landroid/graphics/Typeface;

    if-nez v15, :cond_5

    .line 323
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v15

    const-string v16, "fonts/Num47_TW.ttf"

    invoke-static/range {v15 .. v16}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v15

    sput-object v15, Lcom/android/phone/EmergencyDialer;->sTypeface:Landroid/graphics/Typeface;

    .line 326
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    sget-object v16, Lcom/android/phone/EmergencyDialer;->sTypeface:Landroid/graphics/Typeface;

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 328
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/EmergencyDialer;->maybeAddNumberFormatting()V

    .line 331
    const v15, 0x7f0900a6

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 332
    .local v14, view:Landroid/view/View;
    if-eqz v14, :cond_6

    .line 333
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/EmergencyDialer;->setupKeypad()V

    .line 336
    :cond_6
    const v15, 0x7f0900b3

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    .line 339
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 340
    .local v13, res:Landroid/content/res/Resources;
    const v15, 0x7f0b0009

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    if-eqz v15, :cond_1b

    .line 342
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    const v16, 0x7f0900b4

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 343
    .local v5, emergenyContactsButton:Landroid/view/View;
    const-string v15, "emergency_contacts"

    invoke-static {v15}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_16

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isEncryptionMode()Z

    move-result v15

    if-nez v15, :cond_16

    .line 345
    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Landroid/view/View;->setVisibility(I)V

    .line 346
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    const v16, 0x7f0900b5

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/view/View;

    .line 365
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    const v16, 0x7f0900b7

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim1:Landroid/view/View;

    .line 368
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim1:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    const v16, 0x7f0900b8

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim2:Landroid/view/View;

    .line 371
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim2:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    const-string v15, "feature_chn_duos_cdma_gsm"

    invoke-static {v15}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1a

    .line 374
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    iget v15, v15, Landroid/content/res/Configuration;->orientation:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_18

    .line 375
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0201fd

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 381
    :cond_8
    :goto_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/view/View;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 382
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim1:Landroid/view/View;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 383
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim2:Landroid/view/View;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 384
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v15

    const/high16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->addFlags(I)V

    .line 393
    :goto_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    const v16, 0x7f0900b6

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    .line 394
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 401
    .end local v5           #emergenyContactsButton:Landroid/view/View;
    :goto_8
    if-eqz p1, :cond_9

    .line 402
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 406
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 407
    .local v3, data:Landroid/net/Uri;
    if-eqz v3, :cond_a

    const-string v15, "tel"

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 408
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-static {v15, v0}, Landroid/telephony/MultiSimPhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 409
    .local v10, number:Ljava/lang/String;
    if-eqz v10, :cond_a

    .line 410
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v15, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    .end local v10           #number:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 417
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v15, :cond_b

    .line 419
    :try_start_1
    new-instance v15, Landroid/media/ToneGenerator;

    const/16 v17, 0x8

    const/16 v18, 0x50

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v15, v0, v1}, Landroid/media/ToneGenerator;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 425
    :cond_b
    :goto_9
    :try_start_2
    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 427
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 428
    .local v6, intentFilter:Landroid/content/IntentFilter;
    const-string v15, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v6, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 429
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 432
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mHaptic:Lcom/android/phone/HapticFeedback;

    const v16, 0x7f0b0003

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Lcom/android/phone/HapticFeedback;->init(Landroid/content/Context;Z)V
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 437
    :goto_a
    const-string v15, "window"

    invoke-static {v15}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/phone/EmergencyDialer;->mWindowManager:Landroid/view/IWindowManager;

    .line 438
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/phone/EmergencyDialer;->mLocked:Z

    .line 439
    const-string v15, "feature_ktt"

    invoke-static {v15}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_c

    const-string v15, "20"

    const-string v16, "ril.simtype"

    invoke-static/range {v16 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_d

    :cond_c
    const-string v15, "feature_lgt"

    invoke-static {v15}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_e

    const-string v15, "18"

    const-string v16, "ril.simtype"

    invoke-static/range {v16 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 442
    :cond_d
    const/16 v15, 0x1a

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/phone/EmergencyDialer;->requestSystemKeyEvent(IZ)Z

    .line 443
    const/4 v15, 0x3

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/phone/EmergencyDialer;->requestSystemKeyEvent(IZ)Z

    .line 446
    const/4 v15, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/phone/EmergencyDialer;->isSystemKeyEventRequested(I)Z

    move-result v15

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/phone/EmergencyDialer;->mLocked:Z

    .line 448
    :cond_e
    const-string v15, "ril.domesticOtaStart"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/phone/EmergencyDialer;->mDomesticOtaStart:Ljava/lang/String;

    .line 450
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v15, v15, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    const/16 v17, 0x64

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 451
    return-void

    .line 278
    .end local v3           #data:Landroid/net/Uri;
    .end local v6           #intentFilter:Landroid/content/IntentFilter;
    .end local v7           #mIsOnehandOn:Z
    .end local v13           #res:Landroid/content/res/Resources;
    .end local v14           #view:Landroid/view/View;
    :cond_f
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 283
    .restart local v7       #mIsOnehandOn:Z
    :cond_10
    const v15, 0x7f040031

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_1

    .line 284
    :cond_11
    const-string v15, "support_onehand_operation"

    invoke-static {v15}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_12

    if-eqz v7, :cond_12

    const/4 v15, 0x2

    if-eq v11, v15, :cond_12

    .line 285
    const v15, 0x7f040032

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_1

    .line 287
    :cond_12
    const v15, 0x7f040030

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_1

    .line 316
    :cond_13
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 318
    .restart local v8       #mIsOnehandOptionRight:Z
    :cond_14
    const/16 v15, 0x8

    goto/16 :goto_3

    .line 319
    :cond_15
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 351
    .end local v8           #mIsOnehandOptionRight:Z
    .restart local v5       #emergenyContactsButton:Landroid/view/View;
    .restart local v13       #res:Landroid/content/res/Resources;
    .restart local v14       #view:Landroid/view/View;
    :cond_16
    const-string v15, "tablet_device"

    invoke-static {v15}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_17

    .line 352
    const/16 v15, 0x8

    invoke-virtual {v5, v15}, Landroid/view/View;->setVisibility(I)V

    .line 357
    :goto_b
    const-string v15, "feature_lgt"

    invoke-static {v15}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/phone/EmergencyDialer;->mMissingPhoneLock:Z

    if-eqz v15, :cond_7

    .line 358
    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Landroid/view/View;->setVisibility(I)V

    .line 359
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    .line 354
    :cond_17
    const/4 v15, 0x4

    invoke-virtual {v5, v15}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b

    .line 377
    :cond_18
    const-string v15, "support_onehand_operation"

    invoke-static {v15}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_19

    if-nez v7, :cond_8

    .line 378
    :cond_19
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0201fe

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6

    .line 387
    :cond_1a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim1:Landroid/view/View;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 388
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim1:Landroid/view/View;

    .line 389
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim2:Landroid/view/View;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 390
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim2:Landroid/view/View;

    goto/16 :goto_7

    .line 397
    .end local v5           #emergenyContactsButton:Landroid/view/View;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 398
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    goto/16 :goto_8

    .line 420
    .restart local v3       #data:Landroid/net/Uri;
    :catch_0
    move-exception v4

    .line 421
    .local v4, e:Ljava/lang/RuntimeException;
    :try_start_4
    const-string v15, "EmergencyDialer"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Exception caught while creating local tone generator: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    goto/16 :goto_9

    .line 425
    .end local v4           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v15

    .line 433
    .restart local v6       #intentFilter:Landroid/content/IntentFilter;
    :catch_1
    move-exception v9

    .line 434
    .local v9, nfe:Landroid/content/res/Resources$NotFoundException;
    const-string v15, "EmergencyDialer"

    const-string v16, "Vibrate control bool missing."

    move-object/from16 v0, v16

    invoke-static {v15, v0, v9}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1072
    .line 1073
    if-nez p1, :cond_0

    .line 1075
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e01c2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyDialer;->createErrorMessage(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e002a

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1084
    :cond_0
    return-object v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 455
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 456
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 457
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 459
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 461
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 463
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 464
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 465
    const-string v0, "EmergencyDialer"

    const-string v1, "onDestroy() : SCREEN_BRIGHT_WAKE_LOCK Release"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 468
    :cond_1
    return-void

    .line 461
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "view"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 642
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 658
    :cond_0
    :goto_0
    return v2

    .line 646
    :pswitch_0
    const/16 v3, 0x42

    if-ne p2, v3, :cond_0

    .line 647
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 648
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/phone/PhoneApp;

    .line 649
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v3, v0, Lcom/android/phone/PhoneApp;->phoneMgr:[Lcom/android/phone/PhoneInterfaceManager;

    aget-object v2, v3, v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSimForVoiceCalls()I

    move-result v1

    .line 651
    .local v1, simSlotID:I
    invoke-direct {p0, v1}, Lcom/android/phone/EmergencyDialer;->placeCall(I)V

    .line 653
    const/4 v2, 0x1

    goto :goto_0

    .line 642
    :pswitch_data_0
    .packed-switch 0x7f0900dd
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x4

    const/4 v2, 0x1

    .line 543
    const-string v3, "feature_ktt"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "20"

    const-string v4, "ril.simtype"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 544
    if-ne p1, v5, :cond_1

    .line 545
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 590
    :cond_0
    :goto_0
    return v2

    .line 548
    :cond_1
    iget-boolean v3, p0, Lcom/android/phone/EmergencyDialer;->mLocked:Z

    if-nez v3, :cond_0

    .line 552
    :cond_2
    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/phone/EmergencyDialer;->mMissingPhoneLock:Z

    if-eqz v3, :cond_3

    .line 553
    if-eq p1, v5, :cond_0

    .line 558
    :cond_3
    sparse-switch p1, :sswitch_data_0

    .line 590
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 561
    :sswitch_0
    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 565
    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/phone/EmergencyDialer;->mMissingPhoneLock:Z

    if-nez v3, :cond_0

    .line 566
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 568
    :cond_6
    const-string v3, "feature_chn_duos_cdma_gsm"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 570
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->onCreateSimSelectDialog()V

    goto :goto_0

    .line 573
    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/phone/PhoneApp;

    .line 574
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v3, v0, Lcom/android/phone/PhoneApp;->phoneMgr:[Lcom/android/phone/PhoneInterfaceManager;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSimForVoiceCalls()I

    move-result v1

    .line 576
    .local v1, simSlotID:I
    invoke-direct {p0, v1}, Lcom/android/phone/EmergencyDialer;->placeCall(I)V

    goto :goto_0

    .line 583
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v1           #simSlotID:I
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_4

    .line 584
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    goto :goto_0

    .line 558
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x7 -> :sswitch_1
        0x43 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 621
    sparse-switch p1, :sswitch_data_0

    .line 631
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 623
    :sswitch_0
    const/16 v1, 0x51

    invoke-direct {p0, v1}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 627
    :sswitch_1
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    goto :goto_0

    .line 621
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x43 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 595
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 596
    sparse-switch p1, :sswitch_data_0

    .line 616
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 610
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    .line 611
    const/4 v0, 0x1

    goto :goto_0

    .line 596
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_0
        0xf -> :sswitch_0
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
        0x12 -> :sswitch_0
        0x43 -> :sswitch_0
    .end sparse-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter "view"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 851
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 852
    .local v0, id:I
    sparse-switch v0, :sswitch_data_0

    move v1, v2

    .line 866
    :goto_0
    return v1

    .line 854
    :sswitch_0
    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->clear()V

    .line 858
    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 862
    :sswitch_1
    const/16 v2, 0x51

    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 852
    :sswitch_data_0
    .sparse-switch
        0x7f0900b0 -> :sswitch_1
        0x7f0900b6 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 928
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mApp:Lcom/android/phone/PhoneApp;

    sget-object v1, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    .line 930
    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 931
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDomesticOtaStart:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDomesticOtaStart:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 932
    const/4 v0, 0x3

    invoke-direct {p0, v0, v2}, Lcom/android/phone/EmergencyDialer;->requestSystemKeyEvent(IZ)Z

    .line 933
    const/16 v0, 0x1a

    invoke-direct {p0, v0, v2}, Lcom/android/phone/EmergencyDialer;->requestSystemKeyEvent(IZ)Z

    .line 935
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v0, v2}, Landroid/app/StatusBarManager;->disable(I)V

    .line 939
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 941
    const-string v0, "emergency_dialer_tones"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 942
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 943
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_1

    .line 944
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 945
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 947
    :cond_1
    monitor-exit v1

    .line 949
    :cond_2
    return-void

    .line 947
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 491
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 497
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 498
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 1159
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 1160
    if-nez p1, :cond_0

    move-object v0, p2

    .line 1161
    check-cast v0, Landroid/app/AlertDialog;

    .line 1162
    .local v0, alert:Landroid/app/AlertDialog;
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/phone/EmergencyDialer;->createErrorMessage(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1164
    .end local v0           #alert:Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 472
    const-string v0, "lastNumber"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    .line 473
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 871
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 873
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 874
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v3, -0x1000001

    and-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 875
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 878
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "dtmf_tone"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/EmergencyDialer;->mDTMFToneEnabled:Z

    .line 882
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {v0}, Lcom/android/phone/HapticFeedback;->checkSystemSetting()V

    .line 886
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 887
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 889
    :try_start_1
    new-instance v0, Landroid/media/ToneGenerator;

    const/16 v3, 0x8

    const/16 v4, 0x50

    invoke-direct {v0, v3, v4}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 896
    :cond_0
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 901
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/StatusBarManager;->disable(I)V

    .line 902
    const-string v0, "emergency_dialer_home_recent_block"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 903
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v2, 0x120

    invoke-virtual {v0, v2}, Landroid/app/StatusBarManager;->disable(I)V

    .line 905
    :cond_1
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mApp:Lcom/android/phone/PhoneApp;

    sget-object v2, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->MEDIUM:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    .line 907
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->updateDialAndDeleteButtonStateEnabledAttr()V

    .line 909
    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 910
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDomesticOtaStart:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDomesticOtaStart:Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 912
    const/4 v0, 0x3

    invoke-direct {p0, v0, v1}, Lcom/android/phone/EmergencyDialer;->requestSystemKeyEvent(IZ)Z

    .line 913
    const/16 v0, 0x1a

    invoke-direct {p0, v0, v1}, Lcom/android/phone/EmergencyDialer;->requestSystemKeyEvent(IZ)Z

    .line 915
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v1, 0x47

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 921
    :cond_2
    return-void

    .line 878
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 891
    :catch_0
    move-exception v0

    .line 892
    :try_start_3
    const-string v3, "EmergencyDialer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception caught while creating local tone generator: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_1

    .line 896
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 477
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 478
    const-string v0, "lastNumber"

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 953
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 954
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 955
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "input"
    .parameter "start"
    .parameter "before"
    .parameter "changeCount"

    .prologue
    .line 219
    return-void
.end method

.method playTone(I)V
    .locals 4
    .parameter

    .prologue
    .line 1035
    iget-boolean v0, p0, Lcom/android/phone/EmergencyDialer;->mDTMFToneEnabled:Z

    if-nez v0, :cond_1

    .line 1060
    :cond_0
    :goto_0
    return-void

    .line 1044
    :cond_1
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1045
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 1046
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1051
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1052
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_2

    .line 1053
    const-string v0, "EmergencyDialer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playTone: mToneGenerator == null, tone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    monitor-exit v1

    goto :goto_0

    .line 1059
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1058
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v2, 0x96

    invoke-virtual {v0, p1, v2}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 1059
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
