.class public Lcom/android/mms/ui/DirectCallTiltGuide;
.super Ljava/lang/Object;
.source "DirectCallTiltGuide.java"


# static fields
.field public static final MOTION_DIALOG_CALI_PERF:Ljava/lang/String; = "CalibrationDone"

.field public static final MOTION_DIALOG_PERF:Ljava/lang/String; = "MotionDialogOnOff"


# instance fields
.field mActivity:Landroid/app/Activity;

.field mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

.field mMotionTiltDialog:Landroid/app/AlertDialog;

.field mTiltPopupAni:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/mms/util/DirectCallingManager;)V
    .locals 1
    .parameter "activity"
    .parameter "directCall"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/DirectCallTiltGuide;->mMotionTiltDialog:Landroid/app/AlertDialog;

    .line 34
    iput-object p1, p0, Lcom/android/mms/ui/DirectCallTiltGuide;->mActivity:Landroid/app/Activity;

    .line 35
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/DirectCallTiltGuide;->setDirectCallManager(Lcom/android/mms/util/DirectCallingManager;)V

    .line 36
    return-void
.end method

.method private motionDialogInitialOff()V
    .locals 11

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/android/mms/ui/DirectCallTiltGuide;->dismissDialog()V

    .line 102
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/mms/ui/DirectCallTiltGuide;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 103
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v7, p0, Lcom/android/mms/ui/DirectCallTiltGuide;->mActivity:Landroid/app/Activity;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 105
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v7, 0x7f030061

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 106
    .local v4, layout:Landroid/view/View;
    const v7, 0x7f0e01b0

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 107
    .local v2, img:Landroid/widget/ImageView;
    const v7, 0x7f0e01af

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 108
    .local v5, message1:Landroid/widget/TextView;
    const v7, 0x7f0e01b1

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 109
    .local v6, message3:Landroid/widget/TextView;
    const v7, 0x7f0e012d

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 110
    .local v1, checkBox:Landroid/widget/CheckBox;
    const v7, 0x7f0a03ce

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 111
    const v7, 0x7f020206

    invoke-virtual {v2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 112
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v7, p0, Lcom/android/mms/ui/DirectCallTiltGuide;->mTiltPopupAni:Landroid/graphics/drawable/AnimationDrawable;

    .line 113
    const v7, 0x7f0a03d1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 114
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 115
    const v7, 0x7f0a03cc

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 116
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 118
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    new-instance v8, Lcom/android/mms/ui/DirectCallTiltGuide$5;

    invoke-direct {v8, p0}, Lcom/android/mms/ui/DirectCallTiltGuide$5;-><init>(Lcom/android/mms/ui/DirectCallTiltGuide;)V

    const-wide/16 v9, 0x5f

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 124
    new-instance v7, Lcom/android/mms/ui/DirectCallTiltGuide$6;

    invoke-direct {v7, p0}, Lcom/android/mms/ui/DirectCallTiltGuide$6;-><init>(Lcom/android/mms/ui/DirectCallTiltGuide;)V

    invoke-virtual {v1, v7}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 130
    new-instance v7, Lcom/android/mms/ui/DirectCallTiltGuide$7;

    invoke-direct {v7, p0}, Lcom/android/mms/ui/DirectCallTiltGuide$7;-><init>(Lcom/android/mms/ui/DirectCallTiltGuide;)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const v7, 0x7f0a03cb

    new-instance v8, Lcom/android/mms/ui/DirectCallTiltGuide$8;

    invoke-direct {v8, p0, v1}, Lcom/android/mms/ui/DirectCallTiltGuide$8;-><init>(Lcom/android/mms/ui/DirectCallTiltGuide;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 154
    const v7, 0x7f0a04b1

    new-instance v8, Lcom/android/mms/ui/DirectCallTiltGuide$9;

    invoke-direct {v8, p0, v1}, Lcom/android/mms/ui/DirectCallTiltGuide$9;-><init>(Lcom/android/mms/ui/DirectCallTiltGuide;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 164
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/DirectCallTiltGuide;->mMotionTiltDialog:Landroid/app/AlertDialog;

    .line 165
    iget-object v7, p0, Lcom/android/mms/ui/DirectCallTiltGuide;->mMotionTiltDialog:Landroid/app/AlertDialog;

    sget-object v8, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 166
    iget-object v7, p0, Lcom/android/mms/ui/DirectCallTiltGuide;->mMotionTiltDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    .line 167
    return-void
.end method

.method private motionDialogInitialOn()V
    .locals 10

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/mms/ui/DirectCallTiltGuide;->dismissDialog()V

    .line 50
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/mms/ui/DirectCallTiltGuide;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 51
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v6, p0, Lcom/android/mms/ui/DirectCallTiltGuide;->mActivity:Landroid/app/Activity;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 53
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f030062

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 54
    .local v4, layout:Landroid/view/View;
    const v6, 0x7f0e01b0

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 55
    .local v2, img:Landroid/widget/ImageView;
    const v6, 0x7f0e01af

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 56
    .local v5, message1:Landroid/widget/TextView;
    const v6, 0x7f0e012d

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 57
    .local v1, checkBox:Landroid/widget/CheckBox;
    const v6, 0x7f0a03ce

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 58
    const v6, 0x7f020206

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 59
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v6, p0, Lcom/android/mms/ui/DirectCallTiltGuide;->mTiltPopupAni:Landroid/graphics/drawable/AnimationDrawable;

    .line 60
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 61
    const v6, 0x7f0a03cc

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 62
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 64
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lcom/android/mms/ui/DirectCallTiltGuide$1;

    invoke-direct {v7, p0}, Lcom/android/mms/ui/DirectCallTiltGuide$1;-><init>(Lcom/android/mms/ui/DirectCallTiltGuide;)V

    const-wide/16 v8, 0x5f

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 70
    new-instance v6, Lcom/android/mms/ui/DirectCallTiltGuide$2;

    invoke-direct {v6, p0}, Lcom/android/mms/ui/DirectCallTiltGuide$2;-><init>(Lcom/android/mms/ui/DirectCallTiltGuide;)V

    invoke-virtual {v1, v6}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 77
    new-instance v6, Lcom/android/mms/ui/DirectCallTiltGuide$3;

    invoke-direct {v6, p0}, Lcom/android/mms/ui/DirectCallTiltGuide$3;-><init>(Lcom/android/mms/ui/DirectCallTiltGuide;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const v6, 0x7f0a0029

    new-instance v7, Lcom/android/mms/ui/DirectCallTiltGuide$4;

    invoke-direct {v7, p0, v1}, Lcom/android/mms/ui/DirectCallTiltGuide$4;-><init>(Lcom/android/mms/ui/DirectCallTiltGuide;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 93
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/DirectCallTiltGuide;->mMotionTiltDialog:Landroid/app/AlertDialog;

    .line 95
    iget-object v6, p0, Lcom/android/mms/ui/DirectCallTiltGuide;->mMotionTiltDialog:Landroid/app/AlertDialog;

    sget-object v7, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 96
    iget-object v6, p0, Lcom/android/mms/ui/DirectCallTiltGuide;->mMotionTiltDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 97
    return-void
.end method


# virtual methods
.method public dismissDialog()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/mms/ui/DirectCallTiltGuide;->mMotionTiltDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/mms/ui/DirectCallTiltGuide;->mMotionTiltDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/DirectCallTiltGuide;->mMotionTiltDialog:Landroid/app/AlertDialog;

    .line 174
    :cond_0
    return-void
.end method

.method public setDirectCallManager(Lcom/android/mms/util/DirectCallingManager;)V
    .locals 0
    .parameter "directCallManager"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/mms/ui/DirectCallTiltGuide;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    .line 178
    return-void
.end method

.method public startMotionTutorialDialog()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/mms/ui/DirectCallTiltGuide;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/android/mms/ui/DirectCallTiltGuide;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    iget-object v1, p0, Lcom/android/mms/ui/DirectCallTiltGuide;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/android/mms/util/DirectCallingManager;->getPickupToCallOut(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    invoke-direct {p0}, Lcom/android/mms/ui/DirectCallTiltGuide;->motionDialogInitialOn()V

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/DirectCallTiltGuide;->motionDialogInitialOff()V

    goto :goto_0
.end method
