DROP DATABASE IF EXISTS issue_375;
CREATE DATABASE issue_375;
USE issue_375;

CREATE TABLE t (
  id         int PRIMARY KEY,
  updated_at datetime NOT NULL,
  foo        varchar(16),
  UNIQUE INDEX (updated_at)
);

INSERT INTO issue_375.t VALUES
   (1, '2009-09-03 14:15:00', 'a'),
   (2, '2009-09-03 14:15:10', 'b'),
   (3, '2009-09-03 14:15:20', 'c'),
   (4, '2009-09-03 14:15:40', 'd'),
   (5, '2009-09-03 14:16:10', 'e'),
   (6, '2009-09-03 14:16:20', 'f'),
   (7, '2009-09-03 14:16:50', 'g'),
   (8, '2009-09-03 14:17:00', 'h'),
   (9, '2009-09-03 14:17:30', 'j'),
   (10, '2009-09-03 14:18:00', 'k'),
   (11, '2009-09-03 14:18:05', 'l'),
   (12, '2009-09-03 14:18:09', 'm'),
   (13, '2009-09-03 14:18:11', 'n'),
   (14, '2009-09-03 14:18:23', 'o'),
   (15, '2009-09-03 14:18:49', 'p'),
   (16, '2009-09-03 14:18:59', 'q'),
   (17, '2009-09-06 15:00:00', 'q'),
   (18, '2009-09-06 15:00:01', 'r'),
   (19, '2009-09-06 15:00:02', 's'),
   (20, '2009-09-06 15:00:03', 't'),
   (21, '2009-09-06 15:00:04', 'u'),
   (22, '2009-09-06 15:00:05', 'v'),
   (23, '2009-09-06 15:00:06', 'w'),
   (24, '2009-09-06 15:00:07', 'x'),
   (25, '2009-09-06 15:00:08', 'y'),
   (26, '2009-09-06 15:00:09', 'z'),
   (27, '2009-09-06 15:00:10', 'aa'),
   (28, '2009-09-06 15:00:11', 'ab'),
   (29, '2009-09-06 15:00:12', 'ac'),
   (30, '2009-09-06 15:00:13', 'ad'),
   (31, '2009-09-06 15:00:14', 'ae'),
   (32, '2009-09-06 15:00:15', 'af'),
   (33, '2009-09-06 15:00:16', 'ag'),
   (34, '2009-09-06 15:00:17', 'ah'),
   (35, '2009-09-06 15:00:18', 'ai'),
   (36, '2009-09-06 15:00:19', 'aj'),
   (37, '2009-09-06 15:00:20', 'ak'),
   (38, '2009-09-06 15:00:21', 'al'),
   (39, '2009-09-06 15:00:22', 'am'),
   (40, '2009-09-06 15:00:23', 'an'),
   (41, '2009-09-06 15:00:24', 'ao'),
   (42, '2009-09-06 15:00:25', 'ap'),
   (43, '2009-09-06 15:00:26', 'aq'),
   (44, '2009-09-06 15:00:27', 'ar'),
   (45, '2009-09-06 15:00:28', 'as'),
   (46, '2009-09-06 15:00:29', 'at'),
   (47, '2009-09-06 15:00:30', 'au'),
   (48, '2009-09-06 15:00:31', 'av'),
   (49, '2009-09-06 15:00:32', 'aw'),
   (50, '2009-09-06 15:00:33', 'ax'),
   (51, '2009-09-06 15:00:34', 'ay'),
   (52, '2009-09-06 15:00:35', 'az'),
   (53, '2009-09-06 15:00:36', 'ba'),
   (54, '2009-09-06 15:00:37', 'bb'),
   (55, '2009-09-06 15:00:38', 'bc'),
   (56, '2009-09-06 15:00:39', 'bd'),
   (57, '2009-09-06 15:00:40', 'be'),
   (58, '2009-09-06 15:00:41', 'bf'),
   (59, '2009-09-06 15:00:42', 'bg'),
   (60, '2009-09-06 15:00:43', 'bh'),
   (61, '2009-09-06 15:00:44', 'bi'),
   (62, '2009-09-06 15:00:45', 'bj'),
   (63, '2009-09-06 15:00:46', 'bk'),
   (64, '2009-09-06 15:00:47', 'bl'),
   (65, '2009-09-06 15:00:48', 'bm'),
   (66, '2009-09-06 15:00:49', 'bn'),
   (67, '2009-09-06 15:00:50', 'bo'),
   (68, '2009-09-06 15:00:51', 'bp'),
   (69, '2009-09-06 15:00:52', 'bq'),
   (70, '2009-09-06 15:00:53', 'br'),
   (71, '2009-09-06 15:00:54', 'bs'),
   (72, '2009-09-06 15:00:55', 'bt'),
   (73, '2009-09-06 15:00:56', 'bu'),
   (74, '2009-09-06 15:00:57', 'bv'),
   (75, '2009-09-06 15:00:58', 'bw'),
   (76, '2009-09-06 15:00:59', 'bx'),
   (77, '2009-09-06 15:01:00', 'by'),
   (78, '2009-09-06 15:01:01', 'bz'),
   (79, '2009-09-06 15:01:02', 'ca'),
   (80, '2009-09-06 15:01:03', 'cb'),
   (81, '2009-09-06 15:01:04', 'cc'),
   (82, '2009-09-06 15:01:05', 'cd'),
   (83, '2009-09-06 15:01:06', 'ce'),
   (84, '2009-09-06 15:01:07', 'cf'),
   (85, '2009-09-06 15:01:08', 'cg'),
   (86, '2009-09-06 15:01:09', 'ch'),
   (87, '2009-09-06 15:01:10', 'ci'),
   (88, '2009-09-06 15:01:11', 'cj'),
   (89, '2009-09-06 15:01:12', 'ck'),
   (90, '2009-09-06 15:01:13', 'cl'),
   (91, '2009-09-06 15:01:14', 'cm'),
   (92, '2009-09-06 15:01:15', 'cn'),
   (93, '2009-09-06 15:01:16', 'co'),
   (94, '2009-09-06 15:01:17', 'cp'),
   (95, '2009-09-06 15:01:18', 'cq'),
   (96, '2009-09-06 15:01:19', 'cr'),
   (97, '2009-09-06 15:01:20', 'cs'),
   (98, '2009-09-06 15:01:21', 'ct'),
   (99, '2009-09-06 15:01:22', 'cu'),
   (100, '2009-09-06 15:01:23', 'cv');
