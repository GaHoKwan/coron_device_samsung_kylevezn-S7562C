.class public Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;
.super Lcom/android/mms/ui/IconWeightGridAdapter;
.source "AttachmentTypeWeightGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter$AttachmentWeightGridItem;
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
    .line 62
    const/4 v0, 0x0

    const/16 v1, 0xd

    invoke-static {p2, p1, v0, v1}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->getData(ILandroid/content/Context;ZI)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/IconWeightGridAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZI)V
    .locals 1
    .parameter "context"
    .parameter "mode"
    .parameter "toReplaceMedia"
    .parameter "type"

    .prologue
    .line 66
    invoke-static {p2, p1, p3, p4}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->getData(ILandroid/content/Context;ZI)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/IconWeightGridAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 67
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
            "Lcom/android/mms/ui/IconWeightGridAdapter$IconWeightGridItem;",
            ">;IIIJ)Z"
        }
    .end annotation

    .prologue
    .line 272
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconWeightGridAdapter$IconWeightGridItem;>;"
    invoke-static {p0, p1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 274
    .local v2, appIcon:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 275
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, p2

    move v3, p5

    move-wide v4, p6

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IJ)V

    .line 276
    const/4 v0, 0x1

    .line 280
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
            "Lcom/android/mms/ui/IconWeightGridAdapter$IconWeightGridItem;",
            ">;IIJ)Z"
        }
    .end annotation

    .prologue
    .line 260
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconWeightGridAdapter$IconWeightGridItem;>;"
    invoke-static {p0, p1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 262
    .local v2, appIcon:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 263
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, p2

    move v3, p4

    move-wide v4, p5

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IJ)V

    .line 264
    const/4 v0, 0x1

    .line 268
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
            "Lcom/android/mms/ui/IconWeightGridAdapter$IconWeightGridItem;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 251
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconWeightGridAdapter$IconWeightGridItem;>;"
    invoke-static {p0, p1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    .line 252
    invoke-static/range {p2 .. p7}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IJ)V

    .line 253
    const/4 v0, 0x1

    .line 256
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
            "Lcom/android/mms/ui/IconWeightGridAdapter$IconWeightGridItem;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p0, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconWeightGridAdapter$IconWeightGridItem;>;"
    new-instance v0, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter$AttachmentWeightGridItem;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter$AttachmentWeightGridItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;IJ)V

    .line 285
    .local v0, temp:Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter$AttachmentWeightGridItem;
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    return-void
.end method

.method protected static getData(ILandroid/content/Context;ZI)Ljava/util/List;
    .locals 26
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
            "Lcom/android/mms/ui/IconWeightGridAdapter$IconWeightGridItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v4, Ljava/util/ArrayList;

    const/16 v2, 0xb

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 78
    .local v4, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconWeightGridAdapter$IconWeightGridItem;>;"
    new-instance v25, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter$1;

    invoke-direct/range {v25 .. v25}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter$1;-><init>()V

    .line 87
    .local v25, myComparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/mms/ui/IconWeightGridAdapter$IconWeightGridItem;>;"
    const/16 v18, 0x0

    .line 88
    .local v18, appIcon:Landroid/graphics/drawable/Drawable;
    const-wide/16 v7, 0x0

    .line 90
    .local v7, weight:J
    if-nez p2, :cond_e

    .line 91
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAddimage()J

    move-result-wide v7

    .line 92
    const-string v3, "com.sec.android.gallery3d"

    const v5, 0x7f0a00d5

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IIJ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 94
    const-string v3, "com.cooliris.media"

    const v5, 0x7f0a00d5

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IIJ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 96
    const-string v3, "com.android.gallery3d"

    const v5, 0x7f0a00d5

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IIJ)Z

    .line 101
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTakepicture()J

    move-result-wide v7

    .line 102
    const-string v3, "com.sec.android.app.camera"

    const v5, 0x7f0a00d6

    const/4 v6, 0x3

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IIJ)Z

    .line 105
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAddvideo()J

    move-result-wide v7

    .line 106
    const-string v10, "com.sec.android.gallery3d"

    const v12, 0x7f0a00d7

    const v13, 0x7f0200a9

    const/4 v14, 0x1

    move-object/from16 v9, p1

    move-object v11, v4

    move-wide v15, v7

    invoke-static/range {v9 .. v16}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IIIJ)Z

    move-result v2

    if-nez v2, :cond_1

    .line 108
    const-string v10, "com.cooliris.media"

    const v12, 0x7f0a00d7

    const v13, 0x7f0200a9

    const/4 v14, 0x1

    move-object/from16 v9, p1

    move-object v11, v4

    move-wide v15, v7

    invoke-static/range {v9 .. v16}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IIIJ)Z

    move-result v2

    if-nez v2, :cond_1

    .line 111
    const-string v10, "com.android.gallery3d"

    const v12, 0x7f0a00d7

    const v13, 0x7f0200a9

    const/4 v14, 0x1

    move-object/from16 v9, p1

    move-object v11, v4

    move-wide v15, v7

    invoke-static/range {v9 .. v16}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IIIJ)Z

    .line 118
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecordvideo()J

    move-result-wide v7

    .line 119
    const-string v10, "com.sec.android.app.camera"

    const v12, 0x7f0a00d8

    const v13, 0x7f0200a3

    const/4 v14, 0x4

    move-object/from16 v9, p1

    move-object v11, v4

    move-wide v15, v7

    invoke-static/range {v9 .. v16}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IIIJ)Z

    .line 122
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAllowAttachAudio()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 123
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAddsound()J

    move-result-wide v7

    .line 124
    const-string v10, "com.sec.android.app.myfiles"

    const v12, 0x7f0a00d9

    const v13, 0x7f0200a5

    const/4 v14, 0x2

    move-object/from16 v9, p1

    move-object v11, v4

    move-wide v15, v7

    invoke-static/range {v9 .. v16}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IIIJ)Z

    .line 128
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRecordAudio()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 129
    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecordsound()J

    move-result-wide v7

    .line 130
    const-string v3, "com.sec.android.app.voicerecorder"

    const v5, 0x7f0a00da

    const/4 v6, 0x5

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IIJ)Z

    .line 134
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVCalendar()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 135
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAddvcal()J

    move-result-wide v7

    .line 136
    const-string v3, "com.android.calendar"

    const v5, 0x7f0a016d

    const/4 v6, 0x7

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IIJ)Z

    .line 140
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVMemo()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 141
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAddvnote()J

    move-result-wide v7

    .line 142
    const-string v3, "com.sec.android.app.memo"

    const v5, 0x7f0a016e

    const/16 v6, 0x8

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IIJ)Z

    .line 146
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSMemo()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 147
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAddsmemo()J

    move-result-wide v7

    .line 148
    const-string v3, "com.sec.android.widgetapp.diotek.smemo"

    const v5, 0x7f0a0259

    const/16 v6, 0xb

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IIJ)Z

    .line 152
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSNote()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 153
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAddsnote()J

    move-result-wide v7

    .line 154
    const-string v3, "com.sec.android.app.snotebook"

    const v5, 0x7f0a025a

    const/16 v6, 0xd

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IIJ)Z

    .line 158
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSPlanner()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 159
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAddvcal()J

    move-result-wide v7

    .line 160
    const/16 v22, 0x0

    .line 161
    .local v22, info:Landroid/content/pm/ApplicationInfo;
    const/16 v23, 0x0

    .line 162
    .local v23, label:Ljava/lang/String;
    const-string v17, "/system/app/SecCalendarProvider.apk"

    .line 163
    .local v17, TWCalendarApk:Ljava/lang/String;
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .local v19, checkTWCalendar:Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 166
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.android.calendar"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v22

    .line 167
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v23

    .line 171
    :goto_0
    const-string v10, "com.android.calendar"

    if-eqz v23, :cond_c

    move-object/from16 v12, v23

    :goto_1
    const-string v2, "com.android.calendar"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/mms/ui/MessageUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    const/4 v14, 0x7

    move-object/from16 v9, p1

    move-object v11, v4

    move-wide v15, v7

    invoke-static/range {v9 .. v16}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IJ)Z

    .line 178
    .end local v17           #TWCalendarApk:Ljava/lang/String;
    .end local v19           #checkTWCalendar:Ljava/io/File;
    .end local v22           #info:Landroid/content/pm/ApplicationInfo;
    .end local v23           #label:Ljava/lang/String;
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVTask()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 179
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAddvtodo()J

    move-result-wide v7

    .line 180
    const-string v3, "com.android.task"

    const v5, 0x7f0a01ca

    const/16 v6, 0x9

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IIJ)Z

    .line 184
    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocation()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 185
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAddLocation()J

    move-result-wide v7

    .line 186
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocationMessage()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 187
    const-string v10, "com.google.android.apps.maps"

    const v2, 0x7f0a01cd

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    const/16 v14, 0xa

    move-object/from16 v9, p1

    move-object v11, v4

    move-wide v15, v7

    invoke-static/range {v9 .. v16}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IJ)Z

    .line 200
    :cond_a
    :goto_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVCard()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 201
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAddvcard()J

    move-result-wide v7

    .line 202
    const-string v3, "com.android.contacts"

    const v5, 0x7f0a016c

    const/4 v6, 0x6

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IIJ)Z

    .line 240
    :cond_b
    :goto_3
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v24, myArrayData:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconWeightGridAdapter$IconWeightGridItem;>;"
    const/16 v21, 0x0

    .local v21, i:I
    :goto_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v21

    if-ge v0, v2, :cond_14

    .line 243
    move/from16 v0, v21

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 168
    .end local v21           #i:I
    .end local v24           #myArrayData:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconWeightGridAdapter$IconWeightGridItem;>;"
    .restart local v17       #TWCalendarApk:Ljava/lang/String;
    .restart local v19       #checkTWCalendar:Ljava/io/File;
    .restart local v22       #info:Landroid/content/pm/ApplicationInfo;
    .restart local v23       #label:Ljava/lang/String;
    :catch_0
    move-exception v20

    .line 169
    .local v20, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 171
    .end local v20           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_c
    const v2, 0x7f0a0255

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 193
    .end local v17           #TWCalendarApk:Ljava/lang/String;
    .end local v19           #checkTWCalendar:Ljava/io/File;
    .end local v22           #info:Landroid/content/pm/ApplicationInfo;
    .end local v23           #label:Ljava/lang/String;
    :cond_d
    const-string v10, "com.google.android.apps.maps"

    const v2, 0x7f0a01cd

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v2, "com.google.android.apps.maps"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/mms/ui/MessageUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    const/16 v14, 0xa

    move-object/from16 v9, p1

    move-object v11, v4

    move-wide v15, v7

    invoke-static/range {v9 .. v16}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IJ)Z

    goto :goto_2

    .line 206
    :cond_e
    const/16 v2, 0xa

    move/from16 v0, p3

    if-eq v0, v2, :cond_f

    const/16 v2, 0xb

    move/from16 v0, p3

    if-ne v0, v2, :cond_11

    .line 207
    :cond_f
    const-string v3, "com.sec.android.gallery3d"

    const v5, 0x7f0a00d5

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IIJ)Z

    move-result v2

    if-nez v2, :cond_10

    .line 209
    const-string v3, "com.cooliris.media"

    const v5, 0x7f0a00d5

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IIJ)Z

    move-result v2

    if-nez v2, :cond_10

    .line 211
    const-string v3, "com.android.gallery3d"

    const v5, 0x7f0a00d5

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IIJ)Z

    .line 216
    :cond_10
    const-string v3, "com.sec.android.app.camera"

    const v5, 0x7f0a00d6

    const/4 v6, 0x3

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IIJ)Z

    .line 218
    const-string v10, "com.sec.android.app.myfiles"

    const v12, 0x7f0a00d7

    const v13, 0x7f0200a9

    const/4 v14, 0x1

    move-object/from16 v9, p1

    move-object v11, v4

    move-wide v15, v7

    invoke-static/range {v9 .. v16}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IIIJ)Z

    .line 221
    const-string v10, "com.sec.android.app.camera"

    const v12, 0x7f0a00d8

    const v13, 0x7f0200a3

    const/4 v14, 0x4

    move-object/from16 v9, p1

    move-object v11, v4

    move-wide v15, v7

    invoke-static/range {v9 .. v16}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IIIJ)Z

    goto/16 :goto_3

    .line 224
    :cond_11
    const/16 v2, 0xc

    move/from16 v0, p3

    if-ne v0, v2, :cond_13

    .line 225
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAllowAttachAudio()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 226
    const-string v10, "com.sec.android.app.myfiles"

    const v12, 0x7f0a00d9

    const v13, 0x7f0200a5

    const/4 v14, 0x2

    move-object/from16 v9, p1

    move-object v11, v4

    move-wide v15, v7

    invoke-static/range {v9 .. v16}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IIIJ)Z

    .line 231
    :cond_12
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRecordAudio()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 232
    const-string v3, "com.sec.android.app.voicerecorder"

    const v5, 0x7f0a00da

    const/4 v6, 0x5

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IIJ)Z

    goto/16 :goto_3

    .line 235
    :cond_13
    const/16 v2, 0xe

    move/from16 v0, p3

    if-ne v0, v2, :cond_b

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocationMessage()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 237
    const v2, 0x7f0a01cd

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const/16 v12, 0xa

    move-object v9, v4

    move-wide v13, v7

    invoke-static/range {v9 .. v14}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IJ)V

    goto/16 :goto_3

    .line 246
    .restart local v21       #i:I
    .restart local v24       #myArrayData:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconWeightGridAdapter$IconWeightGridItem;>;"
    :cond_14
    invoke-static/range {v24 .. v25}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 247
    return-object v24
.end method


# virtual methods
.method public buttonToCommand(I)I
    .locals 2
    .parameter "whichButton"

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter$AttachmentWeightGridItem;

    .line 71
    .local v0, item:Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter$AttachmentWeightGridItem;
    invoke-virtual {v0}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter$AttachmentWeightGridItem;->getCommand()I

    move-result v1

    return v1
.end method
