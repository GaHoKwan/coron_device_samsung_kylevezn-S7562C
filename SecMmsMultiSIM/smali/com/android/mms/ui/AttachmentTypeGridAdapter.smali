.class public Lcom/android/mms/ui/AttachmentTypeGridAdapter;
.super Lcom/android/mms/ui/IconGridAdapter;
.source "AttachmentTypeGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/AttachmentTypeGridAdapter$AttachmentGridItem;
    }
.end annotation


# static fields
.field public static final ADD_DRAWINGPAD:I = 0xc

.field public static final ADD_IMAGE:I = 0x0

.field public static final ADD_LOCATION:I = 0xa

.field public static final ADD_SMEMO:I = 0xb

.field public static final ADD_SNOTE:I = 0xd

.field public static final ADD_SOUND:I = 0x2

.field public static final ADD_VCAL:I = 0x7

.field public static final ADD_VCARD:I = 0x6

.field public static final ADD_VIDEO:I = 0x1

.field public static final ADD_VNOTE:I = 0x8

.field public static final ADD_VTODO:I = 0x9

.field public static final MODE_WITH_ATTACHMENT:I = 0x1

.field public static final MODE_WITH_SLIDESHOW:I = 0x0

.field public static final RECORD_SOUND:I = 0x5

.field public static final RECORD_VIDEO:I = 0x4

.field public static final TAKE_PICTURE:I = 0x3


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 57
    const/4 v0, 0x0

    const/16 v1, 0xd

    invoke-static {p2, p1, v0, v1}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->getData(ILandroid/content/Context;ZI)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/IconGridAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZI)V
    .locals 1
    .parameter "context"
    .parameter "mode"
    .parameter "toReplaceMedia"
    .parameter "type"

    .prologue
    .line 61
    invoke-static {p2, p1, p3, p4}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->getData(ILandroid/content/Context;ZI)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/IconGridAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 62
    return-void
.end method

.method private static addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z
    .locals 2
    .parameter "context"
    .parameter "packageName"
    .parameter
    .parameter "menuId"
    .parameter "item"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconGridAdapter$IconGridItem;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .line 214
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconGridAdapter$IconGridItem;>;"
    invoke-static {p0, p1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 216
    .local v0, appIcon:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, v0, p4}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 218
    const/4 v1, 0x1

    .line 222
    .end local v0           #appIcon:Landroid/graphics/drawable/Drawable;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z
    .locals 2
    .parameter "context"
    .parameter "packageName"
    .parameter
    .parameter "menuId"
    .parameter "icondId"
    .parameter "item"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconGridAdapter$IconGridItem;",
            ">;III)Z"
        }
    .end annotation

    .prologue
    .line 226
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconGridAdapter$IconGridItem;>;"
    invoke-static {p0, p1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 228
    .local v0, appIcon:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, v0, p5}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 230
    const/4 v1, 0x1

    .line 234
    .end local v0           #appIcon:Landroid/graphics/drawable/Drawable;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

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
            "Lcom/android/mms/ui/IconGridAdapter$IconGridItem;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            "I)Z"
        }
    .end annotation

    .prologue
    .line 205
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconGridAdapter$IconGridItem;>;"
    invoke-static {p0, p1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    .line 206
    invoke-static {p2, p3, p4, p5}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 207
    const/4 v0, 0x1

    .line 210
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
            "Lcom/android/mms/ui/IconGridAdapter$IconGridItem;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 238
    .local p0, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconGridAdapter$IconGridItem;>;"
    new-instance v0, Lcom/android/mms/ui/AttachmentTypeGridAdapter$AttachmentGridItem;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/mms/ui/AttachmentTypeGridAdapter$AttachmentGridItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 239
    .local v0, temp:Lcom/android/mms/ui/AttachmentTypeGridAdapter$AttachmentGridItem;
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    return-void
.end method

.method protected static getData(ILandroid/content/Context;ZI)Ljava/util/List;
    .locals 11
    .parameter "mode"
    .parameter "context"
    .parameter "toReplaceMedia"
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "ZI)",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconGridAdapter$IconGridItem;",
            ">;"
        }
    .end annotation

    .prologue
    const v4, 0x7f0200a9

    const/16 v10, 0xa

    const/4 v5, 0x1

    const v3, 0x7f0a00d5

    const/4 v1, 0x0

    .line 71
    new-instance v2, Ljava/util/ArrayList;

    const/16 v0, 0xb

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 72
    .local v2, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconGridAdapter$IconGridItem;>;"
    const/4 v6, 0x0

    .line 74
    .local v6, appIcon:Landroid/graphics/drawable/Drawable;
    if-nez p2, :cond_e

    .line 75
    const-string v0, "com.sec.android.gallery3d"

    invoke-static {p1, v0, v2, v3, v1}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    const-string v0, "com.cooliris.media"

    invoke-static {p1, v0, v2, v3, v1}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    const-string v0, "com.android.gallery3d"

    invoke-static {p1, v0, v2, v3, v1}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 84
    :cond_0
    const-string v0, "com.sec.android.app.camera"

    const v1, 0x7f0a00d6

    const/4 v3, 0x3

    invoke-static {p1, v0, v2, v1, v3}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 87
    const-string v1, "com.sec.android.gallery3d"

    const v3, 0x7f0a00d7

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    const-string v1, "com.cooliris.media"

    const v3, 0x7f0a00d7

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    const-string v1, "com.android.gallery3d"

    const v3, 0x7f0a00d7

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z

    .line 96
    :cond_1
    const-string v1, "com.sec.android.app.camera"

    const v3, 0x7f0a00d8

    const v4, 0x7f0200a3

    const/4 v5, 0x4

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z

    .line 99
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAllowAttachAudio()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    const-string v1, "com.sec.android.app.myfiles"

    const v3, 0x7f0a00d9

    const v4, 0x7f0200a5

    const/4 v5, 0x2

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z

    .line 104
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRecordAudio()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 105
    const-string v0, "com.sec.android.app.voicerecorder"

    const v1, 0x7f0a00da

    const/4 v3, 0x5

    invoke-static {p1, v0, v2, v1, v3}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 109
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVCalendar()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 110
    const-string v0, "com.android.calendar"

    const v1, 0x7f0a016d

    const/4 v3, 0x7

    invoke-static {p1, v0, v2, v1, v3}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 114
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVMemo()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVItemAttachment()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 115
    const-string v0, "com.sec.android.app.memo"

    const v1, 0x7f0a016e

    const/16 v3, 0x8

    invoke-static {p1, v0, v2, v1, v3}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 119
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSMemo()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 120
    const-string v0, "android.intent.action.PENMEMO_ATTACH"

    invoke-static {p1, v0}, Lcom/android/mms/ui/MessageUtils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 123
    const-string v0, "com.sec.android.widgetapp.diotek.smemo"

    const v1, 0x7f0a0259

    const/16 v3, 0xb

    invoke-static {p1, v0, v2, v1, v3}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 128
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSNote()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 129
    const-string v0, "com.sec.android.app.snotebook"

    const v1, 0x7f0a025a

    const/16 v3, 0xd

    invoke-static {p1, v0, v2, v1, v3}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 133
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSPlanner()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVItemAttachment()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 134
    const/4 v8, 0x0

    .line 135
    .local v8, info:Landroid/content/pm/ApplicationInfo;
    const/4 v9, 0x0

    .line 137
    .local v9, label:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.calendar"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 142
    :goto_0
    const-string v1, "com.android.calendar"

    if-eqz v9, :cond_c

    move-object v3, v9

    :goto_1
    const-string v0, "com.android.calendar"

    invoke-static {p1, v0}, Lcom/android/mms/ui/MessageUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x7

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)Z

    .line 147
    .end local v8           #info:Landroid/content/pm/ApplicationInfo;
    .end local v9           #label:Ljava/lang/String;
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVTask()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVItemAttachment()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 148
    const-string v0, "com.android.task"

    const v1, 0x7f0a01ca

    const/16 v3, 0x9

    invoke-static {p1, v0, v2, v1, v3}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 152
    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocation()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 153
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocationMessage()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 154
    const-string v1, "com.google.android.apps.maps"

    const v0, 0x7f0a01cd

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0200a7

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v0, p1

    move v5, v10

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)Z

    .line 163
    :cond_a
    :goto_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVCard()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVItemAttachment()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 164
    const-string v0, "com.android.contacts"

    const v1, 0x7f0a016c

    const/4 v3, 0x6

    invoke-static {p1, v0, v2, v1, v3}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 201
    :cond_b
    :goto_3
    return-object v2

    .line 139
    .restart local v8       #info:Landroid/content/pm/ApplicationInfo;
    .restart local v9       #label:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 140
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 142
    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_c
    const v0, 0x7f0a0255

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 158
    .end local v8           #info:Landroid/content/pm/ApplicationInfo;
    .end local v9           #label:Ljava/lang/String;
    :cond_d
    const-string v1, "com.google.android.apps.maps"

    const v0, 0x7f0a01cd

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "com.google.android.apps.maps"

    invoke-static {p1, v0}, Lcom/android/mms/ui/MessageUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v0, p1

    move v5, v10

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)Z

    goto :goto_2

    .line 168
    :cond_e
    if-eq p3, v10, :cond_f

    const/16 v0, 0xb

    if-ne p3, v0, :cond_11

    .line 169
    :cond_f
    const-string v0, "com.sec.android.gallery3d"

    invoke-static {p1, v0, v2, v3, v1}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    move-result v0

    if-nez v0, :cond_10

    .line 171
    const-string v0, "com.cooliris.media"

    invoke-static {p1, v0, v2, v3, v1}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    move-result v0

    if-nez v0, :cond_10

    .line 173
    const-string v0, "com.android.gallery3d"

    invoke-static {p1, v0, v2, v3, v1}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 178
    :cond_10
    const-string v0, "com.sec.android.app.camera"

    const v1, 0x7f0a00d6

    const/4 v3, 0x3

    invoke-static {p1, v0, v2, v1, v3}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    .line 180
    const-string v1, "com.sec.android.app.myfiles"

    const v3, 0x7f0a00d7

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z

    .line 183
    const-string v1, "com.sec.android.app.camera"

    const v3, 0x7f0a00d8

    const v4, 0x7f0200a3

    const/4 v5, 0x4

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z

    goto :goto_3

    .line 186
    :cond_11
    const/16 v0, 0xc

    if-ne p3, v0, :cond_13

    .line 187
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAllowAttachAudio()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 188
    const-string v1, "com.sec.android.app.myfiles"

    const v3, 0x7f0a00d9

    const v4, 0x7f0200a5

    const/4 v5, 0x2

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z

    .line 192
    :cond_12
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRecordAudio()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 193
    const-string v0, "com.sec.android.app.voicerecorder"

    const v1, 0x7f0a00da

    const/4 v3, 0x5

    invoke-static {p1, v0, v2, v1, v3}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    goto/16 :goto_3

    .line 196
    :cond_13
    const/16 v0, 0xe

    if-ne p3, v0, :cond_b

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocationMessage()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 198
    const v0, 0x7f0a01cd

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0200a7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v2, v0, v1, v10}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    goto/16 :goto_3
.end method


# virtual methods
.method public buttonToCommand(I)I
    .locals 2
    .parameter "whichButton"

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/AttachmentTypeGridAdapter$AttachmentGridItem;

    .line 66
    .local v0, item:Lcom/android/mms/ui/AttachmentTypeGridAdapter$AttachmentGridItem;
    invoke-virtual {v0}, Lcom/android/mms/ui/AttachmentTypeGridAdapter$AttachmentGridItem;->getCommand()I

    move-result v1

    return v1
.end method
