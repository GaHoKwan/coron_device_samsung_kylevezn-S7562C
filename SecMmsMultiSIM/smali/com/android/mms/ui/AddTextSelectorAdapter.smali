.class public Lcom/android/mms/ui/AddTextSelectorAdapter;
.super Lcom/android/mms/ui/IconListAdapter;
.source "AddTextSelectorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/AddTextSelectorAdapter$AddTextListItem;
    }
.end annotation


# static fields
.field public static final ADD_CALENDAR:I = 0x1

.field public static final ADD_LOCATION:I = 0x4

.field public static final ADD_MEMO:I = 0x2

.field public static final ADD_NAMECARD:I = 0x0

.field public static final ADD_SMEMO:I = 0x5

.field public static final ADD_SNOTE:I = 0x7

.field public static final ADD_TASK:I = 0x3

.field public static final ADD_TEXT_TEMPLATE:I = 0x6


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    invoke-static {p1}, Lcom/android/mms/ui/AddTextSelectorAdapter;->getData(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/IconListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 35
    return-void
.end method

.method private static addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILandroid/graphics/drawable/Drawable;I)Z
    .locals 1
    .parameter "context"
    .parameter "packageName"
    .parameter
    .parameter "menuId"
    .parameter "appIcon"
    .parameter "item"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;I",
            "Landroid/graphics/drawable/Drawable;",
            "I)Z"
        }
    .end annotation

    .prologue
    .line 126
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconListAdapter$IconListItem;>;"
    invoke-static {p0, p1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    .line 127
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p4, p5}, Lcom/android/mms/ui/AddTextSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 128
    const/4 v0, 0x1

    .line 131
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)Z
    .locals 1
    .parameter "context"
    .parameter "packageName"
    .parameter
    .parameter "label"
    .parameter "appIcon"
    .parameter "item"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            "I)Z"
        }
    .end annotation

    .prologue
    .line 116
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconListAdapter$IconListItem;>;"
    invoke-static {p0, p1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    .line 117
    invoke-static {p2, p3, p4, p5}, Lcom/android/mms/ui/AddTextSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 118
    const/4 v0, 0x1

    .line 121
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .parameter
    .parameter "title"
    .parameter "appIcon"
    .parameter "command"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconListAdapter$IconListItem;>;"
    new-instance v0, Lcom/android/mms/ui/AddTextSelectorAdapter$AddTextListItem;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/mms/ui/AddTextSelectorAdapter$AddTextListItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 136
    .local v0, temp:Lcom/android/mms/ui/AddTextSelectorAdapter$AddTextListItem;
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    return-void
.end method

.method protected static getData(Landroid/content/Context;)Ljava/util/List;
    .locals 11
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v2, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 45
    .local v2, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconListAdapter$IconListItem;>;"
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVCalendar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    const-string v1, "com.android.calendar"

    const v3, 0x7f0a016d

    const-string v0, "com.android.calendar"

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AddTextSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILandroid/graphics/drawable/Drawable;I)Z

    .line 50
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVMemo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    const-string v1, "com.sec.android.app.memo"

    const v3, 0x7f0a016e

    const-string v0, "com.sec.android.app.memo"

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x2

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AddTextSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILandroid/graphics/drawable/Drawable;I)Z

    .line 55
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVTask()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    const-string v1, "com.android.task"

    const v3, 0x7f0a01ca

    const-string v0, "com.android.task"

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x3

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AddTextSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILandroid/graphics/drawable/Drawable;I)Z

    .line 60
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSMemo()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 61
    const-string v0, "android.intent.action.PENMEMO_ATTACH"

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64
    const-string v1, "com.sec.android.widgetapp.diotek.smemo"

    const v3, 0x7f0a0259

    const-string v0, "com.sec.android.widgetapp.diotek.smemo"

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x5

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AddTextSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILandroid/graphics/drawable/Drawable;I)Z

    .line 69
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSNote()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 70
    const-string v1, "com.sec.android.app.snotebook"

    const v3, 0x7f0a025a

    const-string v0, "com.sec.android.app.snotebook"

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x7

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AddTextSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILandroid/graphics/drawable/Drawable;I)Z

    .line 74
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSPlanner()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 75
    const/4 v9, 0x0

    .line 76
    .local v9, info:Landroid/content/pm/ApplicationInfo;
    const/4 v10, 0x0

    .line 77
    .local v10, label:Ljava/lang/String;
    const-string v6, "/system/app/SecCalendarProvider.apk"

    .line 78
    .local v6, TWCalendarApk:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .local v7, checkTWCalendar:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 81
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.calendar"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 86
    :goto_0
    const-string v1, "com.android.calendar"

    if-eqz v10, :cond_8

    move-object v3, v10

    :goto_1
    const-string v0, "com.android.calendar"

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AddTextSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)Z

    .line 91
    .end local v6           #TWCalendarApk:Ljava/lang/String;
    .end local v7           #checkTWCalendar:Ljava/io/File;
    .end local v9           #info:Landroid/content/pm/ApplicationInfo;
    .end local v10           #label:Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocation()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocationMessage()Z

    move-result v0

    if-nez v0, :cond_6

    .line 92
    const-string v1, "com.google.android.apps.maps"

    const v3, 0x7f0a01cd

    const-string v0, "com.google.android.apps.maps"

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x4

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AddTextSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILandroid/graphics/drawable/Drawable;I)Z

    .line 96
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVCard()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 97
    invoke-static {}, Lcom/android/mms/MmsConfig;->getContactReplacePackageAs()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.jcontacts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 98
    const-string v1, "com.android.jcontacts"

    const v3, 0x7f0a016c

    const-string v0, "com.android.jcontacts"

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AddTextSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILandroid/graphics/drawable/Drawable;I)Z

    .line 107
    :cond_7
    :goto_2
    const v0, 0x7f0a02df

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f020121

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v3, 0x6

    invoke-static {v2, v0, v1, v3}, Lcom/android/mms/ui/AddTextSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 111
    return-object v2

    .line 83
    .restart local v6       #TWCalendarApk:Ljava/lang/String;
    .restart local v7       #checkTWCalendar:Ljava/io/File;
    .restart local v9       #info:Landroid/content/pm/ApplicationInfo;
    .restart local v10       #label:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 84
    .local v8, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 86
    .end local v8           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_8
    const v0, 0x7f0a0255

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 101
    .end local v6           #TWCalendarApk:Ljava/lang/String;
    .end local v7           #checkTWCalendar:Ljava/io/File;
    .end local v9           #info:Landroid/content/pm/ApplicationInfo;
    .end local v10           #label:Ljava/lang/String;
    :cond_9
    const-string v1, "com.android.contacts"

    const v3, 0x7f0a016c

    const-string v0, "com.android.contacts"

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AddTextSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILandroid/graphics/drawable/Drawable;I)Z

    goto :goto_2
.end method


# virtual methods
.method public buttonToCommand(I)I
    .locals 2
    .parameter "whichButton"

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/AddTextSelectorAdapter$AddTextListItem;

    .line 39
    .local v0, item:Lcom/android/mms/ui/AddTextSelectorAdapter$AddTextListItem;
    invoke-virtual {v0}, Lcom/android/mms/ui/AddTextSelectorAdapter$AddTextListItem;->getCommand()I

    move-result v1

    return v1
.end method
