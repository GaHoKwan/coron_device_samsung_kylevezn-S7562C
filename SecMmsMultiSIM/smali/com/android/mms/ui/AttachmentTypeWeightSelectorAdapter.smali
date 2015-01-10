.class public Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;
.super Lcom/android/mms/ui/IconWeightListAdapter;
.source "AttachmentTypeWeightSelectorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter$AttachmentWeightListItem;
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
    .line 60
    const/4 v0, 0x0

    const/16 v1, 0xd

    invoke-static {p2, p1, v0, v1}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->getData(ILandroid/content/Context;ZI)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/IconWeightListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZI)V
    .locals 1
    .parameter "context"
    .parameter "mode"
    .parameter "toReplaceMedia"
    .parameter "type"

    .prologue
    .line 64
    invoke-static {p2, p1, p3, p4}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->getData(ILandroid/content/Context;ZI)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/IconWeightListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 65
    return-void
.end method

.method private static addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IIIJ)Z
    .locals 6
    .parameter "context"
    .parameter "packageName"
    .parameter
    .parameter "menuId"
    .parameter "icondId"
    .parameter "item"
    .parameter "weight"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconWeightListAdapter$IconWeightListItem;",
            ">;IIIJ)Z"
        }
    .end annotation

    .prologue
    .line 258
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconWeightListAdapter$IconWeightListItem;>;"
    invoke-static {p0, p1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 260
    .local v2, appIcon:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 261
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, p2

    move v3, p5

    move-wide v4, p6

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IJ)V

    .line 262
    const/4 v0, 0x1

    .line 266
    .end local v2           #appIcon:Landroid/graphics/drawable/Drawable;
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IIJ)Z
    .locals 6
    .parameter "context"
    .parameter "packageName"
    .parameter
    .parameter "menuId"
    .parameter "item"
    .parameter "weight"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconWeightListAdapter$IconWeightListItem;",
            ">;IIJ)Z"
        }
    .end annotation

    .prologue
    .line 246
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconWeightListAdapter$IconWeightListItem;>;"
    invoke-static {p0, p1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 248
    .local v2, appIcon:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 249
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, p2

    move v3, p4

    move-wide v4, p5

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IJ)V

    .line 250
    const/4 v0, 0x1

    .line 254
    .end local v2           #appIcon:Landroid/graphics/drawable/Drawable;
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IJ)Z
    .locals 1
    .parameter "context"
    .parameter "packageName"
    .parameter
    .parameter "label"
    .parameter "appIcon"
    .parameter "item"
    .parameter "weight"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconWeightListAdapter$IconWeightListItem;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 237
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconWeightListAdapter$IconWeightListItem;>;"
    invoke-static {p0, p1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    .line 238
    invoke-static/range {p2 .. p7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IJ)V

    .line 239
    const/4 v0, 0x1

    .line 242
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IJ)V
    .locals 6
    .parameter
    .parameter "title"
    .parameter "appIcon"
    .parameter "command"
    .parameter "weight"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconWeightListAdapter$IconWeightListItem;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 270
    .local p0, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconWeightListAdapter$IconWeightListItem;>;"
    new-instance v0, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter$AttachmentWeightListItem;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter$AttachmentWeightListItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;IJ)V

    .line 271
    .local v0, temp:Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter$AttachmentWeightListItem;
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    return-void
.end method

.method protected static getData(ILandroid/content/Context;ZI)Ljava/util/List;
    .locals 23
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
            "Lcom/android/mms/ui/IconWeightListAdapter$IconWeightListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v3, Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    .local v3, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconWeightListAdapter$IconWeightListItem;>;"
    new-instance v22, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter$1;

    invoke-direct/range {v22 .. v22}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter$1;-><init>()V

    .line 85
    .local v22, myComparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/mms/ui/IconWeightListAdapter$IconWeightListItem;>;"
    const/16 v16, 0x0

    .line 86
    .local v16, appIcon:Landroid/graphics/drawable/Drawable;
    const-wide/16 v6, 0x0

    .line 88
    .local v6, weight:J
    if-nez p2, :cond_d

    .line 89
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAddimage()J

    move-result-wide v6

    .line 90
    const-string v2, "com.sec.android.gallery3d"

    const v4, 0x7f0a00d5

    const/4 v5, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IIJ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    const-string v2, "com.cooliris.media"

    const v4, 0x7f0a00d5

    const/4 v5, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IIJ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    const-string v2, "com.android.gallery3d"

    const v4, 0x7f0a00d5

    const/4 v5, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IIJ)Z

    .line 99
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTakepicture()J

    move-result-wide v6

    .line 100
    const-string v2, "com.sec.android.app.camera"

    const v4, 0x7f0a00d6

    const/4 v5, 0x3

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IIJ)Z

    .line 103
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAddvideo()J

    move-result-wide v6

    .line 104
    const-string v9, "com.sec.android.gallery3d"

    const v11, 0x7f0a00d7

    const v12, 0x7f0200a9

    const/4 v13, 0x1

    move-object/from16 v8, p1

    move-object v10, v3

    move-wide v14, v6

    invoke-static/range {v8 .. v15}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IIIJ)Z

    move-result v1

    if-nez v1, :cond_1

    .line 106
    const-string v9, "com.cooliris.media"

    const v11, 0x7f0a00d7

    const v12, 0x7f0200a9

    const/4 v13, 0x1

    move-object/from16 v8, p1

    move-object v10, v3

    move-wide v14, v6

    invoke-static/range {v8 .. v15}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IIIJ)Z

    move-result v1

    if-nez v1, :cond_1

    .line 109
    const-string v9, "com.android.gallery3d"

    const v11, 0x7f0a00d7

    const v12, 0x7f0200a9

    const/4 v13, 0x1

    move-object/from16 v8, p1

    move-object v10, v3

    move-wide v14, v6

    invoke-static/range {v8 .. v15}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IIIJ)Z

    .line 116
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecordvideo()J

    move-result-wide v6

    .line 117
    const-string v9, "com.sec.android.app.camera"

    const v11, 0x7f0a00d8

    const v12, 0x7f0200a3

    const/4 v13, 0x4

    move-object/from16 v8, p1

    move-object v10, v3

    move-wide v14, v6

    invoke-static/range {v8 .. v15}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IIIJ)Z

    .line 120
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAllowAttachAudio()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAddsound()J

    move-result-wide v6

    .line 122
    const-string v9, "com.sec.android.app.myfiles"

    const v11, 0x7f0a00d9

    const v12, 0x7f0200a5

    const/4 v13, 0x2

    move-object/from16 v8, p1

    move-object v10, v3

    move-wide v14, v6

    invoke-static/range {v8 .. v15}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IIIJ)Z

    .line 126
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRecordAudio()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 127
    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecordsound()J

    move-result-wide v6

    .line 128
    const-string v2, "com.sec.android.app.voicerecorder"

    const v4, 0x7f0a00da

    const/4 v5, 0x5

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IIJ)Z

    .line 132
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVCalendar()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 133
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAddvcal()J

    move-result-wide v6

    .line 134
    const-string v2, "com.android.calendar"

    const v4, 0x7f0a016d

    const/4 v5, 0x7

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IIJ)Z

    .line 138
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVMemo()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 139
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAddvnote()J

    move-result-wide v6

    .line 140
    const-string v2, "com.sec.android.app.memo"

    const v4, 0x7f0a016e

    const/16 v5, 0x8

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IIJ)Z

    .line 144
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSMemo()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 145
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAddsmemo()J

    move-result-wide v6

    .line 146
    const-string v2, "com.sec.android.widgetapp.diotek.smemo"

    const v4, 0x7f0a0259

    const/16 v5, 0xb

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IIJ)Z

    .line 150
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSNote()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 151
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAddsnote()J

    move-result-wide v6

    .line 152
    const-string v2, "com.sec.android.app.snotebook"

    const v4, 0x7f0a025a

    const/16 v5, 0xd

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IIJ)Z

    .line 156
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSPlanner()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 157
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAddvcal()J

    move-result-wide v6

    .line 158
    const/16 v19, 0x0

    .line 159
    .local v19, info:Landroid/content/pm/ApplicationInfo;
    const/16 v20, 0x0

    .line 161
    .local v20, label:Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.android.calendar"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v19

    .line 162
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v20

    .line 166
    :goto_0
    const-string v9, "com.android.calendar"

    if-eqz v20, :cond_c

    move-object/from16 v11, v20

    :goto_1
    const-string v1, "com.android.calendar"

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    const/4 v13, 0x7

    move-object/from16 v8, p1

    move-object v10, v3

    move-wide v14, v6

    invoke-static/range {v8 .. v15}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IJ)Z

    .line 172
    .end local v19           #info:Landroid/content/pm/ApplicationInfo;
    .end local v20           #label:Ljava/lang/String;
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVTask()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 173
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAddvtodo()J

    move-result-wide v6

    .line 174
    const-string v2, "com.android.task"

    const v4, 0x7f0a01ca

    const/16 v5, 0x9

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IIJ)Z

    .line 178
    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocation()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 179
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAddLocation()J

    move-result-wide v6

    .line 180
    const-string v9, "com.google.android.apps.maps"

    const v1, 0x7f0a01cd

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v1, "com.google.android.apps.maps"

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    const/16 v13, 0xa

    move-object/from16 v8, p1

    move-object v10, v3

    move-wide v14, v6

    invoke-static/range {v8 .. v15}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IJ)Z

    .line 186
    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVCard()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 187
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAddvcard()J

    move-result-wide v6

    .line 188
    const-string v2, "com.android.contacts"

    const v4, 0x7f0a016c

    const/4 v5, 0x6

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IIJ)Z

    .line 226
    :cond_b
    :goto_2
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v21, myArrayData:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconWeightListAdapter$IconWeightListItem;>;"
    const/16 v18, 0x0

    .local v18, i:I
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    move/from16 v0, v18

    if-ge v0, v1, :cond_13

    .line 229
    move/from16 v0, v18

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 163
    .end local v18           #i:I
    .end local v21           #myArrayData:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconWeightListAdapter$IconWeightListItem;>;"
    .restart local v19       #info:Landroid/content/pm/ApplicationInfo;
    .restart local v20       #label:Ljava/lang/String;
    :catch_0
    move-exception v17

    .line 164
    .local v17, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 166
    .end local v17           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_c
    const v1, 0x7f0a0255

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 192
    .end local v19           #info:Landroid/content/pm/ApplicationInfo;
    .end local v20           #label:Ljava/lang/String;
    :cond_d
    const/16 v1, 0xa

    move/from16 v0, p3

    if-eq v0, v1, :cond_e

    const/16 v1, 0xb

    move/from16 v0, p3

    if-ne v0, v1, :cond_10

    .line 193
    :cond_e
    const-string v2, "com.sec.android.gallery3d"

    const v4, 0x7f0a00d5

    const/4 v5, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IIJ)Z

    move-result v1

    if-nez v1, :cond_f

    .line 195
    const-string v2, "com.cooliris.media"

    const v4, 0x7f0a00d5

    const/4 v5, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IIJ)Z

    move-result v1

    if-nez v1, :cond_f

    .line 197
    const-string v2, "com.android.gallery3d"

    const v4, 0x7f0a00d5

    const/4 v5, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IIJ)Z

    .line 202
    :cond_f
    const-string v2, "com.sec.android.app.camera"

    const v4, 0x7f0a00d6

    const/4 v5, 0x3

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IIJ)Z

    .line 204
    const-string v9, "com.sec.android.app.myfiles"

    const v11, 0x7f0a00d7

    const v12, 0x7f0200a9

    const/4 v13, 0x1

    move-object/from16 v8, p1

    move-object v10, v3

    move-wide v14, v6

    invoke-static/range {v8 .. v15}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IIIJ)Z

    .line 207
    const-string v9, "com.sec.android.app.camera"

    const v11, 0x7f0a00d8

    const v12, 0x7f0200a3

    const/4 v13, 0x4

    move-object/from16 v8, p1

    move-object v10, v3

    move-wide v14, v6

    invoke-static/range {v8 .. v15}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IIIJ)Z

    goto/16 :goto_2

    .line 210
    :cond_10
    const/16 v1, 0xc

    move/from16 v0, p3

    if-ne v0, v1, :cond_12

    .line 211
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAllowAttachAudio()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 212
    const-string v9, "com.sec.android.app.myfiles"

    const v11, 0x7f0a00d9

    const v12, 0x7f0200a5

    const/4 v13, 0x2

    move-object/from16 v8, p1

    move-object v10, v3

    move-wide v14, v6

    invoke-static/range {v8 .. v15}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IIIJ)Z

    .line 217
    :cond_11
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRecordAudio()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 218
    const-string v2, "com.sec.android.app.voicerecorder"

    const v4, 0x7f0a00da

    const/4 v5, 0x5

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IIJ)Z

    goto/16 :goto_2

    .line 221
    :cond_12
    const/16 v1, 0xe

    move/from16 v0, p3

    if-ne v0, v1, :cond_b

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocationMessage()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 223
    const v1, 0x7f0a01cd

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    const/16 v11, 0xa

    move-object v8, v3

    move-wide v12, v6

    invoke-static/range {v8 .. v13}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IJ)V

    goto/16 :goto_2

    .line 232
    .restart local v18       #i:I
    .restart local v21       #myArrayData:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconWeightListAdapter$IconWeightListItem;>;"
    :cond_13
    invoke-static/range {v21 .. v22}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 233
    return-object v21
.end method


# virtual methods
.method public buttonToCommand(I)I
    .locals 2
    .parameter "whichButton"

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter$AttachmentWeightListItem;

    .line 69
    .local v0, item:Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter$AttachmentWeightListItem;
    invoke-virtual {v0}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter$AttachmentWeightListItem;->getCommand()I

    move-result v1

    return v1
.end method
